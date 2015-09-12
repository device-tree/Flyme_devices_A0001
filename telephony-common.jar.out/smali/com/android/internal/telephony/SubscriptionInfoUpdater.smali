.class public Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.super Landroid/os/Handler;
.source "SubscriptionInfoUpdater.java"


# static fields
.field private static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x2

.field private static final EVENT_ICC_CHANGED:I = 0x6

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x1

.field public static final EVENT_RADIO_ON_SLOT_ID0:I = 0x1000

.field public static final EVENT_RADIO_ON_SLOT_ID1:I = 0x1001

.field private static final EVENT_SIM_ABSENT:I = 0x4

.field private static final EVENT_SIM_LOADED:I = 0x3

.field private static final EVENT_SIM_READY_OR_LOCKED:I = 0x5

.field private static final EVENT_STACK_READY:I = 0x7

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final ICCID_STRING_FOR_NV:Ljava/lang/String; = "DUMMY_NV_ID"

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionInfoUpdater"

.field private static final PROJECT_SIM_NUM:I

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mContext:Landroid/content/Context;

.field private static mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private static mIccId:[Ljava/lang/String;

.field private static mInsertSimState:[I

.field private static mNeedUpdate:Z

.field private static mPhone:[Lcom/android/internal/telephony/Phone;

.field private static mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field private isNVSubAvailable:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 103
    sput-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 104
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 105
    sput-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 107
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccFileHandler;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 108
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    .line 109
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    .line 110
    sput-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 111
    iput-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 113
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 141
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    const-string v2, "Constructor invoked"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 120
    sput-object p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 121
    sput-object p2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 122
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 123
    sput-object p3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 124
    invoke-static {p1, p3}, Lcom/android/internal/telephony/SubscriptionHelper;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionHelper;

    .line 125
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 126
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x6

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/ModemStackController;->registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 130
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v3, v2, v0

    .line 133
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit16 v3, v0, 0x1000

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()[Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private handleSimAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 460
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hot plug out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 463
    :cond_0
    return-void
.end method

.method private handleSimLoaded(I)V
    .locals 14
    .param p1, "slotId"    # I

    .prologue
    .line 387
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleSimStateLoadedInternal: slotId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 391
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v11, v11, p1

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    .line 392
    .local v6, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v6, :cond_1

    .line 393
    const-string v11, "onRecieve: IccRecords null"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    .line 397
    const-string v11, "onRecieve: IccID null"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_2
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, p1

    .line 402
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    if-nez v11, :cond_3

    .line 403
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v11

    sput-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 406
    :cond_3
    const v8, 0x7fffffff

    .line 407
    .local v8, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v9

    .line 408
    .local v9, "subIds":[I
    if-eqz v9, :cond_4

    .line 409
    const/4 v11, 0x0

    aget v8, v9, v11

    .line 412
    :cond_4
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 413
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, "operator":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 415
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v11

    if-ne v8, v11, :cond_5

    .line 416
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v5, v12}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 418
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    invoke-virtual {v11, v5, v8}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 423
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "msisdn":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 426
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v1, :cond_6

    .line 427
    new-instance v4, Landroid/content/ContentValues;

    const/4 v11, 0x1

    invoke-direct {v4, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 428
    .local v4, "number":Landroid/content/ContentValues;
    const-string v11, "number"

    invoke-virtual {v4, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object v11, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v4, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 434
    .end local v4    # "number":Landroid/content/ContentValues;
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v11, v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v10

    .line 436
    .local v10, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v7

    .line 438
    .local v7, "simCarrierName":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    const/4 v11, 0x1

    invoke-direct {v2, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 440
    .local v2, "name":Landroid/content/ContentValues;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_0

    .line 442
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 443
    move-object v3, v7

    .line 447
    .local v3, "nameToSet":Ljava/lang/String;
    :goto_2
    const-string v11, "display_name"

    invoke-virtual {v2, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sim name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 449
    sget-object v11, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v2, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 420
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "msisdn":Ljava/lang/String;
    .end local v2    # "name":Landroid/content/ContentValues;
    .end local v3    # "nameToSet":Ljava/lang/String;
    .end local v7    # "simCarrierName":Ljava/lang/String;
    .end local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_7
    const-string v11, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 445
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "msisdn":Ljava/lang/String;
    .restart local v2    # "name":Landroid/content/ContentValues;
    .restart local v7    # "simCarrierName":Ljava/lang/String;
    .restart local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CARD "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, p1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "nameToSet":Ljava/lang/String;
    goto :goto_2

    .line 455
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "msisdn":Ljava/lang/String;
    .end local v2    # "name":Landroid/content/ContentValues;
    .end local v3    # "nameToSet":Ljava/lang/String;
    .end local v5    # "operator":Ljava/lang/String;
    .end local v7    # "simCarrierName":Ljava/lang/String;
    .end local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_9
    const-string v11, "Invalid subId, could not update ContentResolver"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleSimReadyOrLocked(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 381
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hot plug in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 384
    :cond_0
    return-void
.end method

.method private isAllIccIdQueryDone()Z
    .locals 3

    .prologue
    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 189
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IccId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x0

    .line 196
    :goto_1
    return v1

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    const-string v1, "All IccIds query complete"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 196
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "oldIccId"    # [Ljava/lang/String;

    .prologue
    .line 660
    const/4 v1, 0x1

    .line 661
    .local v1, "newSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 662
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    const/4 v1, 0x0

    .line 667
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 669
    return v1

    .line 661
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 684
    const-string v0, "SubscriptionInfoUpdater"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void
.end method

.method private queryIccId(I)V
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    .line 466
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryIccId: slotid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 467
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v6, v6, p1

    if-nez v6, :cond_1

    .line 468
    const-string v6, "Getting IccFileHandler"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 470
    const/4 v5, 0x0

    .line 471
    .local v5, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .line 472
    .local v4, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v3

    .line 473
    .local v3, "numApps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 474
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 475
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v6, v7, :cond_2

    .line 476
    move-object v5, v0

    .line 480
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    if-eqz v5, :cond_1

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v7

    aput-object v7, v6, p1

    .line 482
    .end local v1    # "i":I
    .end local v3    # "numApps":I
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v5    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v6, v6, p1

    if-eqz v6, :cond_4

    .line 483
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v6, p1

    .line 484
    .local v2, "iccId":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 485
    const-string v6, "Querying IccId"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 486
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v6, v6, p1

    const/16 v7, 0x2fe2

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 496
    .end local v2    # "iccId":Ljava/lang/String;
    :goto_1
    return-void

    .line 473
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "i":I
    .restart local v3    # "numApps":I
    .restart local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v5    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "i":I
    .end local v3    # "numApps":I
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v5    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v2    # "iccId":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NOT Querying IccId its already set sIccid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 493
    .end local v2    # "iccId":Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v7, v6, p1

    .line 494
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFh["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is null, SIM not inserted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateIccAvailability(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 308
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v4, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v3

    .line 312
    .local v3, "subHelper":Lcom/android/internal/telephony/SubscriptionHelper;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIccAvailability: Enter, slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 313
    sget v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-le v4, v7, :cond_3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->proceedToHandleIccEvent(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 314
    const-string v4, "updateIccAvailability: radio is OFF/unavailable, ignore "

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->isApmSIMNotPwdn()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->isRadioAvailable(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 318
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v6, v4, p1

    .line 319
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aput-object v6, v4, p1

    goto :goto_0

    .line 324
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 325
    .local v1, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 326
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_4

    .line 327
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v4, :cond_4

    .line 329
    const-string v4, "SubscriptionInfoUpdater"

    const-string v5, "updateIccAvailability: Returning NV mode "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v4, p1

    .line 334
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v1, v4, p1

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slot["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: New Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Old Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-nez v4, :cond_6

    .line 339
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hot plug out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 341
    sput-boolean v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 343
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aput-object v6, v4, p1

    .line 344
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, p1

    .line 345
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    if-eqz v4, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto/16 :goto_0

    .line 348
    :cond_6
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 350
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hot plug in"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 352
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v6, v4, p1

    .line 353
    sput-boolean v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 355
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V

    goto/16 :goto_0

    .line 356
    :cond_8
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->isApmSIMNotPwdn()Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_a

    :cond_9
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 361
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " powered up from APM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 362
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v6, v4, p1

    .line 363
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aput-object v6, v4, p1

    .line 364
    sput-boolean v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 365
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V

    goto/16 :goto_0

    .line 366
    :cond_b
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->needSubActivationAfterRefresh(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refresh happened, need sub activation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 370
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto/16 :goto_0

    .line 374
    :cond_c
    sput-boolean v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 375
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V

    goto/16 :goto_0
.end method

.method private declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 21

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    const-string v18, "updateSubscriptionInfoByIccId:+ Start"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 515
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    .line 519
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v18

    if-ge v5, v0, :cond_0

    .line 520
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v19, 0x0

    aput v19, v18, v5

    .line 519
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 523
    :cond_0
    sget v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 524
    .local v7, "insertedSimCount":I
    const/4 v5, 0x0

    :goto_1
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v18

    if-ge v5, v0, :cond_2

    .line 525
    const-string v18, ""

    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v19, v19, v5

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 526
    add-int/lit8 v7, v7, -0x1

    .line 527
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v19, -0x63

    aput v19, v18, v5

    .line 524
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 530
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "insertedSimCount = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 532
    const/4 v6, 0x0

    .line 533
    .local v6, "index":I
    const/4 v5, 0x0

    :goto_2
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v18

    if-ge v5, v0, :cond_6

    .line 534
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v18, v18, v5

    const/16 v19, -0x63

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 533
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 537
    :cond_4
    const/4 v6, 0x2

    .line 538
    add-int/lit8 v8, v5, 0x1

    .local v8, "j":I
    :goto_3
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    .line 539
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v18, v18, v8

    if-nez v18, :cond_5

    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v18, v18, v5

    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v19, v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 540
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v19, 0x1

    aput v19, v18, v5

    .line 541
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v6, v18, v8

    .line 542
    add-int/lit8 v6, v6, 0x1

    .line 538
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 547
    .end local v8    # "j":I
    :cond_6
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 548
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    .line 549
    .local v13, "oldIccId":[Ljava/lang/String;
    const/4 v5, 0x0

    :goto_4
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v18

    if-ge v5, v0, :cond_b

    .line 550
    const/16 v18, 0x0

    aput-object v18, v13, v5

    .line 551
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZ)Ljava/util/List;

    move-result-object v14

    .line 553
    .local v14, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v14, :cond_9

    .line 554
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v5

    .line 555
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateSubscriptionInfoByIccId: oldSubId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 557
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v18, v18, v5

    if-nez v18, :cond_7

    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v18, v18, v5

    aget-object v19, v13, v5

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 558
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v19, -0x1

    aput v19, v18, v5

    .line 560
    :cond_7
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v18, v18, v5

    if-eqz v18, :cond_8

    .line 561
    new-instance v17, Landroid/content/ContentValues;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/content/ContentValues;-><init>(I)V

    .line 562
    .local v17, "value":Landroid/content/ContentValues;
    const-string v18, "sim_id"

    const/16 v19, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    sget-object v19, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_id="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 549
    .end local v17    # "value":Landroid/content/ContentValues;
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 569
    :cond_9
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v18, v18, v5

    if-nez v18, :cond_a

    .line 571
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v19, -0x1

    aput v19, v18, v5

    .line 573
    :cond_a
    const-string v18, ""

    aput-object v18, v13, v5

    .line 574
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateSubscriptionInfoByIccId: No SIM in slot "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " last time"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 514
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v7    # "insertedSimCount":I
    .end local v13    # "oldIccId":[Ljava/lang/String;
    .end local v14    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 578
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v5    # "i":I
    .restart local v6    # "index":I
    .restart local v7    # "insertedSimCount":I
    .restart local v13    # "oldIccId":[Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    :goto_6
    :try_start_1
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v18

    if-ge v5, v0, :cond_c

    .line 579
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateSubscriptionInfoByIccId: oldIccId["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v13, v5

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mIccId["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v19, v19, v5

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 578
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 584
    :cond_c
    const/4 v10, 0x0

    .line 585
    .local v10, "nNewCardCount":I
    const/4 v11, 0x0

    .line 586
    .local v11, "nNewSimStatus":I
    const/4 v5, 0x0

    :goto_7
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v18

    if-ge v5, v0, :cond_10

    .line 587
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v18, v18, v5

    const/16 v19, -0x63

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 588
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No SIM inserted in slot "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " this time"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 589
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 590
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs(Z)V

    .line 586
    :cond_d
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 593
    :cond_e
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v18, v18, v5

    if-lez v18, :cond_f

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v20, v20, v5

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 598
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SUB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v5, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has invalid IccId"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 602
    :goto_9
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v18, v18, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 603
    add-int/lit8 v10, v10, 0x1

    .line 604
    packed-switch v5, :pswitch_data_0

    .line 619
    :goto_a
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v19, -0x2

    aput v19, v18, v5

    goto :goto_8

    .line 600
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v19, v19, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_9

    .line 606
    :pswitch_0
    or-int/lit8 v11, v11, 0x1

    .line 607
    goto :goto_a

    .line 609
    :pswitch_1
    or-int/lit8 v11, v11, 0x2

    .line 610
    goto :goto_a

    .line 612
    :pswitch_2
    or-int/lit8 v11, v11, 0x4

    goto :goto_a

    .line 624
    :cond_10
    const/4 v5, 0x0

    :goto_b
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v18

    if-ge v5, v0, :cond_12

    .line 625
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v18, v18, v5

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 626
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v19, -0x3

    aput v19, v18, v5

    .line 628
    :cond_11
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateSubscriptionInfoByIccId: mInsertSimState["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v19, v19, v5

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 624
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 632
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/SubscriptionHelper;->updateNwMode()V

    .line 633
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v18

    if-eqz v18, :cond_13

    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    .line 634
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    .line 637
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v15

    .line 638
    .local v15, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v15, :cond_15

    const/4 v12, 0x0

    .line 639
    .local v12, "nSubCount":I
    :goto_c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateSubscriptionInfoByIccId: nSubCount = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 640
    const/4 v5, 0x0

    :goto_d
    if-ge v5, v12, :cond_16

    .line 641
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/SubscriptionInfo;

    .line 643
    .local v16, "temp":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 646
    .local v9, "msisdn":Ljava/lang/String;
    if-eqz v9, :cond_14

    .line 647
    new-instance v17, Landroid/content/ContentValues;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/content/ContentValues;-><init>(I)V

    .line 648
    .restart local v17    # "value":Landroid/content/ContentValues;
    const-string v18, "number"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    sget-object v18, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 640
    .end local v17    # "value":Landroid/content/ContentValues;
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 638
    .end local v9    # "msisdn":Ljava/lang/String;
    .end local v12    # "nSubCount":I
    .end local v16    # "temp":Landroid/telephony/SubscriptionInfo;
    :cond_15
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_c

    .line 655
    .restart local v12    # "nSubCount":I
    :cond_16
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 656
    const-string v18, "updateSubscriptionInfoByIccId:- SsubscriptionInfo update complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    monitor-exit p0

    return-void

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 673
    const-string v1, "[dispose]"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 674
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 677
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 678
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 223
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 224
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown msg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 226
    :sswitch_0
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 227
    .local v4, "slotId":Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage : <EVENT_QUERY_ICCID_DONE> SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 228
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 229
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 230
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 231
    .local v2, "data":[B
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    array-length v7, v2

    invoke-static {v2, v8, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 240
    .end local v2    # "data":[B
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    if-eqz v5, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto :goto_0

    .line 233
    :cond_1
    const-string v5, "Null ar"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 234
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, ""

    aput-object v7, v5, v6

    goto :goto_1

    .line 237
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, ""

    aput-object v7, v5, v6

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query IccId fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 247
    .end local v4    # "slotId":Ljava/lang/Integer;
    :sswitch_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 248
    .local v1, "cardIndex":Ljava/lang/Integer;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 249
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v1    # "cardIndex":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 254
    .restart local v1    # "cardIndex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateIccAvailability(I)V

    goto/16 :goto_0

    .line 251
    :cond_3
    const-string v5, "SubscriptionInfoUpdater"

    const-string v6, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    .end local v1    # "cardIndex":Ljava/lang/Integer;
    :sswitch_2
    const-string v5, "EVENT_STACK_READY"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-le v5, v7, :cond_0

    .line 259
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto/16 :goto_0

    .line 264
    :sswitch_3
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 265
    .restart local v4    # "slotId":Ljava/lang/Integer;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 266
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v3, v5

    check-cast v3, [I

    .line 267
    .local v3, "modes":[I
    aget v5, v3, v8

    if-ne v5, v7, :cond_0

    .line 268
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 271
    .end local v3    # "modes":[I
    :cond_4
    const-string v5, "EVENT_GET_NETWORK_SELECTION_MODE_DONE: error getting network mode."

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    .end local v4    # "slotId":Ljava/lang/Integer;
    :sswitch_4
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    goto/16 :goto_0

    .line 281
    :sswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    goto/16 :goto_0

    .line 285
    :sswitch_6
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimReadyOrLocked(I)V

    goto/16 :goto_0

    .line 291
    :sswitch_7
    const-string v5, "handleMessage : <EVENT_RADIO_ON_SLOT_ID0> "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateIccAvailability(I)V

    goto/16 :goto_0

    .line 296
    :sswitch_8
    const-string v5, "handleMessage : <EVENT_RADIO_ON_SLOT_ID1> "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateIccAvailability(I)V

    goto/16 :goto_0

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x1000 -> :sswitch_7
        0x1001 -> :sswitch_8
    .end sparse-switch
.end method

.method public setDisplayNameForNewSub(Ljava/lang/String;II)V
    .locals 8
    .param p1, "newSubName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "newNameSource"    # I

    .prologue
    .line 200
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 201
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_3

    .line 203
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    .line 204
    .local v0, "oldNameSource":I
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 205
    .local v1, "oldSubName":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayNameForNewSub] subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldSimName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newSubName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 208
    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 213
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    int-to-long v6, p3

    invoke-virtual {v3, p1, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 219
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-void

    .line 217
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SubInfo not created yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateSubIdForNV(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x1

    .line 499
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v1, "DUMMY_NV_ID"

    aput-object v1, v0, p1

    .line 500
    sput-boolean v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 501
    const-string v0, "[updateSubIdForNV]+ Start"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 502
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    const-string v0, "[updateSubIdForNV]+ updating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 504
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 505
    iput-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 507
    :cond_0
    return-void
.end method

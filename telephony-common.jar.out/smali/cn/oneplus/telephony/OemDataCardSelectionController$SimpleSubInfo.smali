.class Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;
.super Ljava/lang/Object;
.source "OemDataCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/oneplus/telephony/OemDataCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleSubInfo"
.end annotation


# instance fields
.field public mIccId:Ljava/lang/String;

.field public mSimSlotIndex:I

.field public mStatus:I

.field final synthetic this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;


# direct methods
.method public constructor <init>(Lcn/oneplus/telephony/OemDataCardSelectionController;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 106
    iput-object p1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mIccId:Ljava/lang/String;

    .line 108
    iput v1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mSimSlotIndex:I

    .line 109
    iput v1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mStatus:I

    .line 110
    return-void
.end method

.method public constructor <init>(Lcn/oneplus/telephony/OemDataCardSelectionController;Ljava/lang/String;II)V
    .locals 0
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "slot"    # I
    .param p4, "status"    # I

    .prologue
    .line 100
    iput-object p1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mIccId:Ljava/lang/String;

    .line 102
    iput p3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mSimSlotIndex:I

    .line 103
    iput p4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mStatus:I

    .line 104
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mIccId:Ljava/lang/String;

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mSimSlotIndex:I

    .line 159
    return-void
.end method

.method public compare(Landroid/telephony/SubscriptionInfo;)Z
    .locals 3
    .param p1, "obj"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    iget v1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mStatus:I

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 134
    iget v1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mSimSlotIndex:I

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 138
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public compare(Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;)Z
    .locals 3
    .param p1, "obj"    # Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mIccId:Ljava/lang/String;

    iget-object v2, p1, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mIccId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    iget v1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mStatus:I

    iget v2, p1, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mStatus:I

    if-ne v1, v2, :cond_0

    .line 119
    iget v1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mSimSlotIndex:I

    iget v2, p1, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mSimSlotIndex:I

    if-ne v1, v2, :cond_0

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cp(Landroid/telephony/SubscriptionInfo;)V
    .locals 1
    .param p1, "obj"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mIccId:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v0

    iput v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mStatus:I

    .line 144
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mSimSlotIndex:I

    .line 145
    return-void
.end method

.method public is_absent_sub()Z
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mSimSlotIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->mIccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

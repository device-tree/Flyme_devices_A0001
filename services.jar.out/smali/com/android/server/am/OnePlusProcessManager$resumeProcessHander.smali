.class Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "resumeProcessHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 586
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 587
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 591
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 592
    .local v0, "pid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 594
    .local v1, "uid":I
    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    goto :goto_0
.end method

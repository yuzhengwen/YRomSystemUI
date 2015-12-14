.class Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ThrowControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "com.sonymobile.playanywhere.DEVICE_CONNECTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KEY_DEVICE_LIST_CONNECTED_SINK_DEVICE_STATUS"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    # setter for: Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mCurrentState:Z
    invoke-static {v1, v3}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->access$002(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;Z)Z

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    # invokes: Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->throwSettingsChanged()V
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->access$100(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    const/4 v2, 0x1

    # setter for: Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mCurrentState:Z
    invoke-static {v1, v2}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->access$002(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;Z)Z

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    # invokes: Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->throwSettingsChanged()V
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->access$100(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

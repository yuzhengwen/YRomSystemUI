.class Lcom/android/systemui/statusbar/phone/TaskManager$TaskManagerHandler;
.super Landroid/os/Handler;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TaskManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/TaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TaskManager$TaskManagerHandler;->this$0:Lcom/android/systemui/statusbar/phone/TaskManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/TaskManager;Lcom/android/systemui/statusbar/phone/TaskManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TaskManager$TaskManagerHandler;-><init>(Lcom/android/systemui/statusbar/phone/TaskManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "packagename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskManager$TaskManagerHandler;->this$0:Lcom/android/systemui/statusbar/phone/TaskManager;

    # invokes: Lcom/android/systemui/statusbar/phone/TaskManager;->startTaskByName(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/TaskManager;->access$300(Lcom/android/systemui/statusbar/phone/TaskManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "packagename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskManager$TaskManagerHandler;->this$0:Lcom/android/systemui/statusbar/phone/TaskManager;

    # invokes: Lcom/android/systemui/statusbar/phone/TaskManager;->killChildByName(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/TaskManager;->access$400(Lcom/android/systemui/statusbar/phone/TaskManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskManager$TaskManagerHandler;->this$0:Lcom/android/systemui/statusbar/phone/TaskManager;

    # invokes: Lcom/android/systemui/statusbar/phone/TaskManager;->refreshMemoryUsagePanel()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TaskManager;->access$500(Lcom/android/systemui/statusbar/phone/TaskManager;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskManager$TaskManagerHandler;->this$0:Lcom/android/systemui/statusbar/phone/TaskManager;

    # invokes: Lcom/android/systemui/statusbar/phone/TaskManager;->killAllChild()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TaskManager;->access$600(Lcom/android/systemui/statusbar/phone/TaskManager;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskManager$TaskManagerHandler;->this$0:Lcom/android/systemui/statusbar/phone/TaskManager;

    # invokes: Lcom/android/systemui/statusbar/phone/TaskManager;->refreshMemoryUsagePanel()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TaskManager;->access$500(Lcom/android/systemui/statusbar/phone/TaskManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

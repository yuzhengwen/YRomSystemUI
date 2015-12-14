.class Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "NFCControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;

    # invokes: Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->nfcSettingsChanged()V
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->access$000(Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;)V

    :cond_0
    return-void
.end method

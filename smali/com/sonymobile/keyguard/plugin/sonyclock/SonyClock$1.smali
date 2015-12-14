.class Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;
.super Landroid/content/BroadcastReceiver;
.source "SonyClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    # invokes: Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->createTime(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->access$000(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    # invokes: Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateTime()V
    invoke-static {v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->access$100(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    return-void
.end method

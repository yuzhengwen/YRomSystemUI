.class Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;
.super Ljava/lang/Object;
.source "AnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0x3e8

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    # getter for: Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$100(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    # getter for: Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$000(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    rem-long v2, v0, v4

    sub-long v2, v4, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    # invokes: Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateTime()V
    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$200(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    # getter for: Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$100(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

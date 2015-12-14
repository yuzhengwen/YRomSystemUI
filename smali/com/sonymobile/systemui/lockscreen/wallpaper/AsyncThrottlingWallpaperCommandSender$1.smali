.class Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;
.super Ljava/lang/Object;
.source "AsyncThrottlingWallpaperCommandSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->postSendWallpaperCommandRunnable(Landroid/view/View;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$postTimestamp:J

.field final synthetic val$weakView:Ljava/lang/ref/WeakReference;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;JLjava/lang/ref/WeakReference;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    iput-wide p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$postTimestamp:J

    iput-object p4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$weakView:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$command:Ljava/lang/String;

    iput p6, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$x:I

    iput p7, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    # getter for: Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mClock:Lcom/sonymobile/keyguard/time/Clock;
    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->access$000(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;)Lcom/sonymobile/keyguard/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/keyguard/time/Clock;->getTimeInMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    iget-wide v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$postTimestamp:J

    iget-object v6, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$weakView:Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$command:Ljava/lang/String;

    iget v8, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$x:I

    iget v9, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$y:I

    # invokes: Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->safelySendWallpaperCommand(JJLjava/lang/ref/WeakReference;Ljava/lang/String;II)V
    invoke-static/range {v1 .. v9}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->access$100(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;JJLjava/lang/ref/WeakReference;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    const/4 v1, 0x1

    # invokes: Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->queueSpaceLeftAdd(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->access$200(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;I)V

    return-void
.end method

.class final Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;
.super Ljava/lang/Object;
.source "ThrowTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
.implements Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/ThrowTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/ThrowTile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/ThrowTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;Lcom/sonymobile/systemui/qs/tiles/ThrowTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/ThrowTile;

    # invokes: Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->refreshState()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->access$200(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;)V

    return-void
.end method

.method public onThrowSettingsChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/ThrowTile;

    # invokes: Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->refreshState()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->access$100(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;)V

    return-void
.end method

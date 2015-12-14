.class final Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;
.super Ljava/lang/Object;
.source "DataTrafficTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
.implements Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;)V

    return-void
.end method


# virtual methods
.method public onDataTrafficSettingsChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;

    # invokes: Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->refreshState()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->access$100(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;)V

    return-void
.end method

.method public onKeyguardChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;

    # invokes: Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->refreshState()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->access$200(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;)V

    return-void
.end method

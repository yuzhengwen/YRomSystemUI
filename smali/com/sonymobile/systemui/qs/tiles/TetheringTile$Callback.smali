.class final Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;
.super Ljava/lang/Object;
.source "TetheringTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
.implements Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/TetheringTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/TetheringTile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/TetheringTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;Lcom/sonymobile/systemui/qs/tiles/TetheringTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/TetheringTile;

    # invokes: Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->refreshState()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->access$200(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;)V

    return-void
.end method

.method public onTetheringSettingsChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/TetheringTile;

    # invokes: Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->refreshState()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->access$100(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;)V

    return-void
.end method

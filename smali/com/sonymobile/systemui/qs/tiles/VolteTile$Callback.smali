.class final Lcom/sonymobile/systemui/qs/tiles/VolteTile$Callback;
.super Ljava/lang/Object;
.source "VolteTile.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/VolteTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/VolteTile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/VolteTile;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/VolteTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/VolteTile;Lcom/sonymobile/systemui/qs/tiles/VolteTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/VolteTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/VolteTile;)V

    return-void
.end method


# virtual methods
.method public onVolteSettingsChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/VolteTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/VolteTile;

    # invokes: Lcom/sonymobile/systemui/qs/tiles/VolteTile;->refreshState()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/VolteTile;->access$100(Lcom/sonymobile/systemui/qs/tiles/VolteTile;)V

    return-void
.end method

.class final Lcom/sonymobile/systemui/qs/tiles/NFCTile$Callback;
.super Ljava/lang/Object;
.source "NFCTile.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/NFCTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/NFCTile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/NFCTile;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/NFCTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/NFCTile;Lcom/sonymobile/systemui/qs/tiles/NFCTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/NFCTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/NFCTile;)V

    return-void
.end method


# virtual methods
.method public onNFCSettingsChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/NFCTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/NFCTile;

    # invokes: Lcom/sonymobile/systemui/qs/tiles/NFCTile;->refreshState()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/NFCTile;->access$100(Lcom/sonymobile/systemui/qs/tiles/NFCTile;)V

    return-void
.end method

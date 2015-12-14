.class final Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;
.super Ljava/lang/Object;
.source "StaminaTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
.implements Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/StaminaTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/StaminaTile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/StaminaTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;Lcom/sonymobile/systemui/qs/tiles/StaminaTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/StaminaTile;

    # invokes: Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->refreshState()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->access$200(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;)V

    return-void
.end method

.method public onStaminaSettingsChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/StaminaTile;

    # invokes: Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->refreshState()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->access$100(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;)V

    return-void
.end method

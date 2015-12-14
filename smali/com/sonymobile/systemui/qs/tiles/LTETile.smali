.class public Lcom/sonymobile/systemui/qs/tiles/LTETile;
.super Lcom/android/systemui/qs/QSTile;
.source "LTETile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/tiles/LTETile$1;,
        Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;

.field private final mController:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

.field private mListening:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mListening:Z

    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/LTETile;Lcom/sonymobile/systemui/qs/tiles/LTETile$1;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getLTEController()Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mController:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/qs/tiles/LTETile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/LTETile;->refreshState()V

    return-void
.end method


# virtual methods
.method public handleClick()V
    .locals 2

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mController:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/sonymobile/systemui/statusbar/policy/LTEController;->setLTEEnabled(Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mController:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    invoke-interface {v2}, Lcom/sonymobile/systemui/statusbar/policy/LTEController;->isLTEEnabled()Z

    move-result v0

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0019

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    const v1, 0x7f020097

    :goto_0
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    return-void

    :cond_0
    const v1, 0x7f020096

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/LTETile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/LTETile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mController:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/LTEController;->addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mController:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/LTEController;->removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V

    goto :goto_0
.end method

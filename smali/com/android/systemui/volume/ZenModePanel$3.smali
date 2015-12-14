.class Lcom/android/systemui/volume/ZenModePanel$3;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenModePanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$3;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$3;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$400(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$3;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # setter for: Lcom/android/systemui/volume/ZenModePanel;->mZenSwitchPosition:Z
    invoke-static {v1, p2}, Lcom/android/systemui/volume/ZenModePanel;->access$502(Lcom/android/systemui/volume/ZenModePanel;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$3;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V
    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$600(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

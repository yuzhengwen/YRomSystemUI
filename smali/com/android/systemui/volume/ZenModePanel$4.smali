.class Lcom/android/systemui/volume/ZenModePanel$4;
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

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$4;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$4;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->setAlarmSwitchStatus(Z)V
    invoke-static {v0, p2}, Lcom/android/systemui/volume/ZenModePanel;->access$700(Lcom/android/systemui/volume/ZenModePanel;Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$4;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$600(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void
.end method

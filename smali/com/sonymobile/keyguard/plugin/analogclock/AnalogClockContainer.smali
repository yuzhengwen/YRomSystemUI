.class public Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;
.super Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;
.source "AnalogClockContainer.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public setNextAlarmText(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->setNextAlarmText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startClockTicking()V
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->startClockTicking()V

    :cond_0
    return-void
.end method

.method public stopClockTicking()V
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->stopClockTicking()V

    :cond_0
    return-void
.end method

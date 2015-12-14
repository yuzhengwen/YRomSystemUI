.class public Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;
.super Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
.source "AnalogClockPluginFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 14

    invoke-virtual/range {p0 .. p2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v9, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {p0, v9}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;->getClockView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x3f666666    # 0.9f

    invoke-virtual {p0, v7}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;->getClockSize(Landroid/content/res/Resources;)F

    move-result v0

    sget v10, Lcom/android/keyguard/R$dimen;->somc_keyguard_clock_picker_clock_back_plate_width:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const v10, 0x3f666666    # 0.9f

    mul-float v6, v4, v10

    move v3, v0

    div-float v8, v6, v0

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v8, v10

    if-gez v10, :cond_0

    move v3, v6

    invoke-virtual {v1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/16 v12, 0x11

    invoke-direct {v2, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object v9
.end method

.method public createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$layout;->somc_analog_clock_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1
.end method

.method protected getClockSize(Landroid/content/res/Resources;)F
    .locals 1

    sget v0, Lcom/android/keyguard/R$dimen;->somc_analog_clock_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method protected getClockView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->somc_analog_clock:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

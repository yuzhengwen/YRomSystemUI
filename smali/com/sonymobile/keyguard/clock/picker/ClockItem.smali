.class public Lcom/sonymobile/keyguard/clock/picker/ClockItem;
.super Landroid/widget/LinearLayout;
.source "ClockItem.java"


# instance fields
.field private mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getBackPlateSize()I
    .locals 3

    sget v2, Lcom/android/keyguard/R$id;->somc_keyguard_clock_back_plate:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return v2
.end method

.method private initView(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V
    .locals 4

    sget v3, Lcom/android/keyguard/R$id;->somc_keyguard_clock_back_plate:I

    invoke-virtual {p0, v3}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->somc_keyguard_clock_name:I

    invoke-virtual {p0, v3}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    invoke-virtual {p1, v3}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->createClockView(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    iget-object v3, v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getClock()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    return-object v0
.end method

.method public getPageWidthInPixels()I
    .locals 3

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getBackPlateSize()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public initWithClock(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->initView(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V

    return-void
.end method

.class public Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;
.super Landroid/widget/FrameLayout;
.source "ThemeableAnalogClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHoursHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinutesHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

.field private final mOffscreenCanvas:Landroid/graphics/Canvas;

.field private mSecondsHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

.field private final mTicker:Ljava/lang/Runnable;

.field private mTicking:Z

.field private mTime:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;-><init>(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicker:Ljava/lang/Runnable;

    new-instance v0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$2;-><init>(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mOffscreenCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicking:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setTimeZone()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method private setTimeZone(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method private storeClockHand(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->getHandType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled clock hand type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mSecondsHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    goto :goto_0

    :pswitch_1
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mMinutesHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    goto :goto_0

    :pswitch_2
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mHoursHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private update()V
    .locals 7

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mSecondsHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    mul-int/lit8 v4, v2, 0x6

    int-to-float v4, v4

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->updateHandsRotation(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;F)V

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mMinutesHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    mul-int/lit8 v4, v1, 0x6

    int-to-float v4, v4

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->updateHandsRotation(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;F)V

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mHoursHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    mul-int/lit8 v4, v0, 0x1e

    int-to-float v4, v4

    int-to-float v5, v1

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->updateHandsRotation(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;F)V

    return-void
.end method

.method private updateHandsRotation(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->setRotation(F)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->storeClockHand(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTimeChanged()V
    .locals 4

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->update()V

    return-void
.end method

.method public setNextAlarmText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startClockTicking()V
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicking:Z

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->setTimeZone()V

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->registerReceiver()V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public stopClockTicking()V
    .locals 2

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->unregisterReceiver()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicking:Z

    :cond_0
    return-void
.end method

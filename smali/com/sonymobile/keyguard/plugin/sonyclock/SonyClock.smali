.class public Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;
.super Landroid/widget/LinearLayout;
.source "SonyClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmDisplay:Landroid/widget/TextView;

.field private mAmPmDisplay:Landroid/widget/TextView;

.field private mAmPmFormat:Ljava/lang/CharSequence;

.field private mDashDisplay:Landroid/widget/TextView;

.field private mDateDisplay:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/CharSequence;

.field private mHourDisplay:Landroid/widget/TextView;

.field private mHourFormat12HourClock:Ljava/lang/CharSequence;

.field private mHourFormat24HourClock:Ljava/lang/CharSequence;

.field private mIsTicking:Z

.field private mMinuteDisplay:Landroid/widget/TextView;

.field private mMinuteFormat:Ljava/lang/CharSequence;

.field private mNextAlarmText:Ljava/lang/String;

.field private mTime:Ljava/util/Calendar;

.field private final mTimeEventReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    new-instance v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateTime()V

    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private fetchViewHandles()V
    .locals 2

    sget v1, Lcom/android/keyguard/R$id;->somc_sony_clock_hour:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourDisplay:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$id;->somc_sony_clock_minute:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteDisplay:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$id;->somc_sony_clock_ampm:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$id;->somc_sony_clock_dash:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$id;->somc_sony_clock_date:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateDisplay:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$id;->somc_sony_clock_alarm:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->somc_sony_clock_hour_format_12_hour_clock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourFormat12HourClock:Ljava/lang/CharSequence;

    sget v1, Lcom/android/keyguard/R$string;->somc_sony_clock_hour_format_24_hour_clock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourFormat24HourClock:Ljava/lang/CharSequence;

    sget v1, Lcom/android/keyguard/R$string;->somc_sony_clock_minute_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteFormat:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateDateFormat()V

    sget v1, Lcom/android/keyguard/R$string;->somc_sony_clock_am_pm_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmFormat:Ljava/lang/CharSequence;

    return-void
.end method

.method private registerTimeEventReceiver()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerTimeSettingsChangeObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterTimeEventReceiver()V
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterTimeSettingsChangeObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateAlarmDisplay()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mNextAlarmText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mNextAlarmText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mNextAlarmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateClockDisplay()V
    .locals 3

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourFormat24HourClock:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateDateDisplay()V

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateAlarmDisplay()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourFormat12HourClock:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDateDisplay()V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateDisplay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDateFormat()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->somc_sony_clock_date_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateFormat:Ljava/lang/CharSequence;

    return-void
.end method

.method private updateTime()V
    .locals 4

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateClockDisplay()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->fetchViewHandles()V

    return-void
.end method

.method public setNextAlarmText(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mNextAlarmText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateClockDisplay()V

    return-void
.end method

.method public startClockTicking()V
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateDateFormat()V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->registerTimeEventReceiver()V

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->registerTimeSettingsChangeObserver()V

    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateTime()V

    return-void
.end method

.method public stopClockTicking()V
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->unregisterTimeEventReceiver()V

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->unregisterTimeSettingsChangeObserver()V

    :cond_0
    return-void
.end method

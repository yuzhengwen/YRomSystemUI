.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/LinearLayout;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$2;,
        Lcom/android/keyguard/CarrierText$CarrierTextSwitch;,
        Lcom/android/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static final mNumPhones:I

.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mAirplaneModeText:Landroid/widget/TextView;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCarrierTextSwitch:Lcom/android/keyguard/CarrierText$CarrierTextSwitch;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOperatorName:[Landroid/widget/TextView;

.field private mOperatorSeparator:[Landroid/widget/TextView;

.field private mShowAPM:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_carrier_text_view:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget v1, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mOperatorSeparator:[Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->config_display_APM:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/CarrierText;->mShowAPM:Z

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget v1, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    if-le v1, v3, :cond_0

    new-instance v1, Lcom/android/keyguard/CarrierText$CarrierTextSwitch;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CarrierText$CarrierTextSwitch;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextSwitch:Lcom/android/keyguard/CarrierText$CarrierTextSwitch;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/CarrierText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShowAPM:Z

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mOperatorSeparator:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/CarrierText;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mAirplaneModeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/CarrierText;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->shouldDisplaySimStatusOneByOne()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/CarrierText;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->startOrStopCarrierTextSwitch()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/CarrierText$CarrierTextSwitch;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextSwitch:Lcom/android/keyguard/CarrierText$CarrierTextSwitch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/CarrierText;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->isParentAndSelfVisible()Z

    move-result v0

    return v0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    return-object p0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    if-nez v0, :cond_0

    if-eqz v1, :cond_5

    move-object p0, p1

    goto :goto_2

    :cond_5
    const-string p0, ""

    goto :goto_2
.end method

.method private getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v1

    sget-object v3, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_1
    move-object v2, v0

    goto :goto_0

    :pswitch_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    if-nez p3, :cond_3

    move-object v0, p2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_perso_locked_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->somc_add_emergency_call_info_to_persolocked_carrier_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v2, p2

    :cond_4
    invoke-direct {p0, v3, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    if-nez p2, :cond_5

    if-nez p3, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->somc_add_emergency_call_info_to_sim_missing_carrier_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v2, p2

    :cond_6
    invoke-direct {p0, v3, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_permanent_disabled_sim_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->somc_add_emergency_call_info_to_sim_missing_carrier_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v2, p2

    :cond_7
    invoke-direct {p0, v3, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_6
    if-nez p2, :cond_8

    if-nez p3, :cond_8

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_sim_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_7
    if-nez p2, :cond_9

    if-nez p3, :cond_9

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_9
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_sim_puk_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->lockscreen_sim_error_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->PersoLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private isInsideEmergencyCarrierArea()Z
    .locals 2

    const-string v0, "insideEmergencyCarrierArea"

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isParentAndSelfVisible()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private shouldDisplaySimStatusOneByOne()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    if-le v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->isInsideEmergencyCarrierArea()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startOrStopCarrierTextSwitch()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextSwitch:Lcom/android/keyguard/CarrierText$CarrierTextSwitch;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->shouldDisplaySimStatusOneByOne()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->isParentAndSelfVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextSwitch:Lcom/android/keyguard/CarrierText$CarrierTextSwitch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextSwitch:Lcom/android/keyguard/CarrierText$CarrierTextSwitch;

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText$CarrierTextSwitch;->run()V

    :cond_0
    return-void
.end method

.method private updateCarrierTextForMultiSIM(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->isInsideEmergencyCarrierArea()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->somc_dsds_number_colon_freetext_format:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->somc_dsds_number_colon_name_dash_freetext_format:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    aput-object p1, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v3, 0x6

    new-array v1, v3, [I

    sget v3, Lcom/android/keyguard/R$id;->airplane_mode:I

    aput v3, v1, v5

    const/4 v3, 0x1

    sget v4, Lcom/android/keyguard/R$id;->carrier1:I

    aput v4, v1, v3

    const/4 v3, 0x2

    sget v4, Lcom/android/keyguard/R$id;->carrier2:I

    aput v4, v1, v3

    const/4 v3, 0x3

    sget v4, Lcom/android/keyguard/R$id;->carrier3:I

    aput v4, v1, v3

    const/4 v3, 0x4

    sget v4, Lcom/android/keyguard/R$id;->carrier_divider1:I

    aput v4, v1, v3

    const/4 v3, 0x5

    sget v4, Lcom/android/keyguard/R$id;->carrier_divider2:I

    aput v4, v1, v3

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/android/keyguard/CarrierText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040626

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    const/4 v4, 0x3

    new-array v1, v4, [I

    sget v4, Lcom/android/keyguard/R$id;->carrier1:I

    aput v4, v1, v6

    sget v4, Lcom/android/keyguard/R$id;->carrier2:I

    aput v4, v1, v7

    sget v4, Lcom/android/keyguard/R$id;->carrier3:I

    aput v4, v1, v8

    new-array v2, v8, [I

    sget v4, Lcom/android/keyguard/R$id;->carrier_divider1:I

    aput v4, v2, v6

    sget v4, Lcom/android/keyguard/R$id;->carrier_divider2:I

    aput v4, v2, v7

    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    const/4 v0, 0x0

    :goto_0
    sget v4, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    if-ge v0, v4, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;

    aget v4, v1, v0

    invoke-virtual {p0, v4}, Lcom/android/keyguard/CarrierText;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->shouldDisplaySimStatusOneByOne()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    sget v5, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    sget v4, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/CarrierText;->mOperatorSeparator:[Landroid/widget/TextView;

    aget v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/android/keyguard/CarrierText;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v0

    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mOperatorSeparator:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mOperatorSeparator:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    const-string v5, "|"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget v4, Lcom/android/keyguard/R$id;->airplane_mode:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/CarrierText;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/CarrierText;->mAirplaneModeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrierTextColor()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->startOrStopCarrierTextSwitch()V

    :cond_1
    return-void
.end method

.method protected updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, p4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneIdBySubId(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isValidPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10403b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    sget v5, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v2, v5, p4}, Lcom/android/keyguard/CarrierText;->updateCarrierTextForMultiSIM(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->startOrStopCarrierTextSwitch()V

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;

    aget-object v3, v5, v1

    iget-object v5, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$bool;->kg_use_all_caps:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/CarrierText;->mAirplaneModeText:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/keyguard/CarrierText;->mShowAPM:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/CarrierText;->mAirplaneModeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/CarrierText;->mAirplaneModeText:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/keyguard/CarrierText;->mShowAPM:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/CarrierText;->mAirplaneModeText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateCarrierTextColor()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getId()I

    move-result v6

    sget v7, Lcom/android/keyguard/R$id;->expanded_carrier_text:I

    if-ne v6, v7, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x4

    new-array v1, v6, [I

    const/4 v6, 0x0

    sget v7, Lcom/android/keyguard/R$id;->airplane_mode:I

    aput v7, v1, v6

    const/4 v6, 0x1

    sget v7, Lcom/android/keyguard/R$id;->carrier1:I

    aput v7, v1, v6

    const/4 v6, 0x2

    sget v7, Lcom/android/keyguard/R$id;->carrier2:I

    aput v7, v1, v6

    const/4 v6, 0x3

    sget v7, Lcom/android/keyguard/R$id;->carrier3:I

    aput v7, v1, v6

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$color;->somc_keyguard_theme_color_secondary_text:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v5, v0, v2

    invoke-virtual {p0, v5}, Lcom/android/keyguard/CarrierText;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

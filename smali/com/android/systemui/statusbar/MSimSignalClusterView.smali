.class public Lcom/android/systemui/statusbar/MSimSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "MSimSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field mCallBusying:[Landroid/widget/ImageView;

.field private mCallBusyingId:[I

.field private mCallBusyingResourceId:[I

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mDataActResourceId:[I

.field private mDataActivity:[Landroid/widget/ImageView;

.field private mDataActivityId:[I

.field private mDataGroup:[Landroid/view/ViewGroup;

.field private mDataGroupResourceId:[I

.field private mDataVisible:[Z

.field private mExcludeWifiGroup:Z

.field private mIsAirplaneMode:Z

.field private final mMSimEnableMobileComboIcon:Z

.field mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

.field private final mMSimShowRATIconAlways:Z

.field mMobile:[Landroid/widget/ImageView;

.field private mMobileActResourceId:[I

.field mMobileActivity:[Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field private mMobileCdma1x:Landroid/widget/ImageView;

.field private mMobileCdma1xId:I

.field private mMobileCdma1xOnly:Landroid/widget/ImageView;

.field private mMobileCdma1xOnlyId:I

.field private mMobileCdma1xOnlyVisible:Z

.field private mMobileCdma3g:Landroid/widget/ImageView;

.field private mMobileCdma3gId:I

.field private mMobileCdmaGroup:Landroid/view/ViewGroup;

.field private mMobileCdmaVisible:Z

.field private mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

.field private mMobileDataVoiceGroupResourceId:[I

.field private mMobileDataVoiceVisible:[Z

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileGroupResourceId:[I

.field private mMobileResourceId:[I

.field mMobileRoaming:[Landroid/widget/ImageView;

.field private mMobileRoamingId:[I

.field private mMobileSepActResourceId:[I

.field private mMobileSepResourceId:[I

.field private mMobileSepTypeResourceId:[I

.field private mMobileSignalData:[Landroid/widget/ImageView;

.field private mMobileSignalDataId:[I

.field private mMobileSignalDataResourceId:[I

.field private mMobileSignalVoice:[Landroid/widget/ImageView;

.field private mMobileSignalVoiceId:[I

.field private mMobileSignalVoiceResourceId:[I

.field private mMobileStrengthId:[I

.field mMobileType:[Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:[I

.field private mMobileTypeResourceId:[I

.field private mMobileVisible:Z

.field private mNoSimIconId:[I

.field mNoSimSlot:[Landroid/widget/ImageView;

.field private mNoSimSlotResourceId:[I

.field private final mNumPhones:I

.field private mPhoneIdOfShowNoSim:I

.field private mRATAnimWhenRoam:Landroid/graphics/drawable/AnimationDrawable;

.field private mRATAnimWhenRoamResID:I

.field private mRoamingResourceId:[I

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private mShowTwoBars:[I

.field mSimIndex:[Landroid/widget/ImageView;

.field private mSimIndexId:[I

.field private mSimIndexResourceId:[I

.field private mStyle:I

.field mTelephonyGroup:[Landroid/view/ViewGroup;

.field private mTelephonyResourceId:[I

.field private mTelephonySepResourceId:[I

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    iput v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSepActResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSepTypeResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSepResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlotResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroupResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroupResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonySepResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRoamingResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_10

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndexResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusyingResourceId:[I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mPhoneIdOfShowNoSim:I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mExcludeWifiGroup:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoamResID:I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndexId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusyingId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyGroup:[Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndex:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusying:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mShowTwoBars:[I

    new-instance v1, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/MSimSignalClusterView$2;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView$2;-><init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimEnableMobileComboIcon:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimShowRATIconAlways:Z

    return-void

    :array_0
    .array-data 4
        0x7f1000c5
        0x7f1000e2
        0x7f1000f4
    .end array-data

    :array_1
    .array-data 4
        0x7f1000c6
        0x7f1000ef
        0x7f100101
    .end array-data

    :array_2
    .array-data 4
        0x7f1000df
        0x7f1000f1
        0x7f100103
    .end array-data

    :array_3
    .array-data 4
        0x7f1000c7
        0x7f1000f0
        0x7f100102
    .end array-data

    :array_4
    .array-data 4
        0x7f1000db
        0x7f1000eb
        0x7f1000fd
    .end array-data

    :array_5
    .array-data 4
        0x7f1000da
        0x7f1000ea
        0x7f1000fc
    .end array-data

    :array_6
    .array-data 4
        0x7f1000dd
        0x7f1000ed
        0x7f1000ff
    .end array-data

    :array_7
    .array-data 4
        0x7f1000d7
        0x7f1000e7
        0x7f1000f9
    .end array-data

    :array_8
    .array-data 4
        0x7f1000cd
        0x7f1000e0
        0x7f1000f2
    .end array-data

    :array_9
    .array-data 4
        0x7f1000ce
        0x7f1000e1
        0x7f1000f3
    .end array-data

    :array_a
    .array-data 4
        0x7f1000d3
        0x7f1000e3
        0x7f1000f5
    .end array-data

    :array_b
    .array-data 4
        0x7f1000d4
        0x7f1000e4
        0x7f1000f6
    .end array-data

    :array_c
    .array-data 4
        0x7f1000d5
        0x7f1000e5
        0x7f1000f7
    .end array-data

    :array_d
    .array-data 4
        0x7f1000de
        0x7f1000ee
        0x7f100100
    .end array-data

    :array_e
    .array-data 4
        0x7f1000d9
        0x7f1000e9
        0x7f1000fb
    .end array-data

    :array_f
    .array-data 4
        0x7f1000dc
        0x7f1000ec
        0x7f1000fe
    .end array-data

    :array_10
    .array-data 4
        0x7f1000d6
        0x7f1000e6
        0x7f1000f8
    .end array-data

    :array_11
    .array-data 4
        0x7f1000d8
        0x7f1000e8
        0x7f1000fa
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/MSimSignalClusterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateSignalClusterExclusionSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/MSimSignalClusterView;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getDefaultPhoneId()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/MSimSignalClusterView;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/MSimSignalClusterView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/MSimSignalClusterView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/MSimSignalClusterView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/MSimSignalClusterView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    return v0
.end method

.method private apply(I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v4, "MSimSignalClusterView"

    const-string v5, "vpn: %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    if-eqz v1, :cond_3

    const-string v1, "VISIBLE"

    :goto_2
    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mExcludeWifiGroup:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    const-string v4, "MSimSignalClusterView"

    const-string v5, "wifi: %s sig=%d act=%d"

    new-array v6, v9, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_5

    const-string v1, "VISIBLE"

    :goto_4
    aput-object v1, v6, v2

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->showMobileGroup(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateMobile(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateCdma()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateData(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateDataVoice(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2
    move v1, v3

    goto/16 :goto_1

    :cond_3
    const-string v1, "GONE"

    goto/16 :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :cond_5
    const-string v1, "GONE"

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    const-string v4, "MSimSignalClusterView"

    const-string v5, "mobile[%d]: %s sig=%d type=%d"

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v1, :cond_b

    const-string v1, "VISIBLE"

    :goto_7
    aput-object v1, v6, v7

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimShowRATIconAlways:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v1, v1, p1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    :goto_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimEnableMobileComboIcon:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v4, v1, p1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v1, v1, p1

    if-eqz v1, :cond_12

    :cond_a
    move v1, v2

    :goto_a
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isDataConnected(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_b
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "GONE"

    goto :goto_7

    :cond_c
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v4, v1, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isDataConnected(I)Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimEnableMobileComboIcon:Z

    if-eqz v1, :cond_f

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v1, v1, p1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, p1

    if-eqz v1, :cond_f

    :cond_e
    move v1, v2

    :goto_c
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_f
    move v1, v3

    goto :goto_c

    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_12
    move v1, v3

    goto :goto_a

    :cond_13
    move v2, v3

    goto :goto_b
.end method

.method private convertMobileStrengthIcon(I)I
    .locals 1

    move v0, p1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f020257

    goto :goto_0

    :sswitch_1
    const v0, 0x7f02025f

    goto :goto_0

    :sswitch_2
    const v0, 0x7f020295

    goto :goto_0

    :sswitch_3
    const v0, 0x7f02029d

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0202d7

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0202df

    goto :goto_0

    :sswitch_6
    const v0, 0x7f020319

    goto :goto_0

    :sswitch_7
    const v0, 0x7f020321

    goto :goto_0

    :sswitch_8
    const v0, 0x7f02035b

    goto :goto_0

    :sswitch_9
    const v0, 0x7f020363

    goto :goto_0

    :sswitch_a
    const v0, 0x7f020258

    goto :goto_0

    :sswitch_b
    const v0, 0x7f020260

    goto :goto_0

    :sswitch_c
    const v0, 0x7f020296

    goto :goto_0

    :sswitch_d
    const v0, 0x7f02029e

    goto :goto_0

    :sswitch_e
    const v0, 0x7f0202d8

    goto :goto_0

    :sswitch_f
    const v0, 0x7f0202e0

    goto :goto_0

    :sswitch_10
    const v0, 0x7f02031a

    goto :goto_0

    :sswitch_11
    const v0, 0x7f020322

    goto :goto_0

    :sswitch_12
    const v0, 0x7f02035c

    goto :goto_0

    :sswitch_13
    const v0, 0x7f020364

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020256 -> :sswitch_0
        0x7f02025b -> :sswitch_a
        0x7f02025e -> :sswitch_1
        0x7f020263 -> :sswitch_b
        0x7f020294 -> :sswitch_2
        0x7f020299 -> :sswitch_c
        0x7f02029c -> :sswitch_3
        0x7f0202a1 -> :sswitch_d
        0x7f0202d6 -> :sswitch_4
        0x7f0202db -> :sswitch_e
        0x7f0202de -> :sswitch_5
        0x7f0202e3 -> :sswitch_f
        0x7f020318 -> :sswitch_6
        0x7f02031d -> :sswitch_10
        0x7f020320 -> :sswitch_7
        0x7f020325 -> :sswitch_11
        0x7f02035a -> :sswitch_8
        0x7f02035f -> :sswitch_12
        0x7f020362 -> :sswitch_9
        0x7f020367 -> :sswitch_13
    .end sparse-switch
.end method

.method private getCdma2gId(I)I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-nez v3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getGsmSignalLevel(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f020250

    goto :goto_0

    :pswitch_1
    const v1, 0x7f02028e

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0202d0

    goto :goto_0

    :pswitch_3
    const v1, 0x7f020312

    goto :goto_0

    :pswitch_4
    const v1, 0x7f020354

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCdmaRoamId(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f020265

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0202a3

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0202e5

    goto :goto_0

    :sswitch_3
    const v0, 0x7f020327

    goto :goto_0

    :sswitch_4
    const v0, 0x7f020369

    goto :goto_0

    :sswitch_5
    const v0, 0x7f020264

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0202a2

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0202e4

    goto :goto_0

    :sswitch_8
    const v0, 0x7f020326

    goto :goto_0

    :sswitch_9
    const v0, 0x7f020368

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020253 -> :sswitch_5
        0x7f020254 -> :sswitch_0
        0x7f020259 -> :sswitch_5
        0x7f02025a -> :sswitch_0
        0x7f020261 -> :sswitch_5
        0x7f020262 -> :sswitch_0
        0x7f020291 -> :sswitch_6
        0x7f020292 -> :sswitch_1
        0x7f020297 -> :sswitch_6
        0x7f020298 -> :sswitch_1
        0x7f02029f -> :sswitch_6
        0x7f0202a0 -> :sswitch_1
        0x7f0202d3 -> :sswitch_7
        0x7f0202d4 -> :sswitch_2
        0x7f0202d9 -> :sswitch_7
        0x7f0202da -> :sswitch_2
        0x7f0202e1 -> :sswitch_7
        0x7f0202e2 -> :sswitch_2
        0x7f020315 -> :sswitch_8
        0x7f020316 -> :sswitch_3
        0x7f02031b -> :sswitch_8
        0x7f02031c -> :sswitch_3
        0x7f020323 -> :sswitch_8
        0x7f020324 -> :sswitch_3
        0x7f020357 -> :sswitch_9
        0x7f020358 -> :sswitch_4
        0x7f02035d -> :sswitch_9
        0x7f02035e -> :sswitch_4
        0x7f020365 -> :sswitch_9
        0x7f020366 -> :sswitch_4
    .end sparse-switch
.end method

.method private getDefaultPhoneId()I
    .locals 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getPhoneId(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private getMobileVoiceId(I)I
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getGsmSignalLevel(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f020279

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0202b7

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0202f9

    goto :goto_0

    :pswitch_3
    const v1, 0x7f02033b

    goto :goto_0

    :pswitch_4
    const v1, 0x7f02037d

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getPhoneId(I)I
    .locals 1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private isCdmaDataOnlyMode(I)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-eq v4, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataNetworkType(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getVoiceNetworkType(I)I

    move-result v1

    const/16 v4, 0xd

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    :cond_2
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, v0

    const v2, 0x7f0201bc

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private show1xOnly()Z
    .locals 5

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataNetworkType(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getVoiceNetworkType(I)I

    move-result v2

    const/4 v1, 0x0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showBothDataAndVoice(I)Z
    .locals 5

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mShowTwoBars:[I

    aget v3, v3, p1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataNetworkType(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getVoiceNetworkType(I)I

    move-result v2

    const/16 v3, 0x11

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    :cond_2
    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showDataAndVoice()Z
    .locals 6

    const/4 v5, 0x5

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataNetworkType(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getVoiceNetworkType(I)I

    move-result v2

    const/4 v1, 0x0

    if-eq v0, v5, :cond_2

    if-eq v0, v5, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    :cond_2
    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showMobileActivity()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showMobileGroup(I)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v4, :cond_4

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v4, v4, v0

    if-eqz v4, :cond_3

    move v1, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mPhoneIdOfShowNoSim:I

    if-ne v4, v5, :cond_5

    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mPhoneIdOfShowNoSim:I

    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mPhoneIdOfShowNoSim:I

    if-eq p1, v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_6
    iput v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mPhoneIdOfShowNoSim:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v4, v4, p1

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method private updateCdma()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateData(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDataVoice(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMobile(I)V
    .locals 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndex:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndexId:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndex:[Landroid/widget/ImageView;

    aget-object v5, v2, p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v2, v2, p1

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimEnableMobileComboIcon:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimShowRATIconAlways:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoam:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoam:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v0, p1, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoamResID:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v5, v5, p1

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoam:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusyingId:[I

    aget v2, v2, p1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusying:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusying:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusyingId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusying:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimShowRATIconAlways:Z

    if-eqz v2, :cond_2

    if-ne v0, p1, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoamResID:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v4, v4, p1

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoam:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoam:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v2, v2, p1

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoamResID:I

    goto :goto_1

    :cond_5
    iput v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoamResID:I

    goto :goto_1
.end method

.method private updateSignalClusterExclusionSettings()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "excluded_system_bar_icons"

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v3}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mExcludeWifiGroup:Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getDefaultPhoneId()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const v1, 0x7f1000c8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    const v1, 0x7f1000c9

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    const v1, 0x7f1000ca

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    const v1, 0x7f1000cb

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    const v1, 0x7f100104

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimEnableMobileComboIcon:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlotResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndex:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndexResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusying:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusyingResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSepResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSepActResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSepTypeResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonySepResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRoamingResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    goto/16 :goto_1

    :cond_1
    const v1, 0x7f1000cf

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    const v1, 0x7f1000d0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    const v1, 0x7f1000d1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    const v1, 0x7f1000d2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "excluded_system_bar_icons"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v5}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateSignalClusterExclusionSettings()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndex:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusying:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyGroup:[Landroid/view/ViewGroup;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/MSimSignalClusterView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView$3;-><init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput p2, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput p4, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput p3, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p5, v0, p7

    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aput p8, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aput p11, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndexId:[I

    aput p9, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusyingId:[I

    aput p10, v0, p7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->showMobileActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aput v2, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aput-boolean v2, v0, p7

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-ne v0, v1, :cond_8

    if-nez p7, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->showDataAndVoice()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v0, v2

    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getCdma2gId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->isCdmaDataOnlyMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v1

    aput v1, v0, p7

    :cond_0
    :goto_1
    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v2, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aput p3, v0, p7

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    aput-boolean v0, v3, p7

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->show1xOnly()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    goto :goto_1

    :cond_5
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    goto :goto_1

    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v1

    aput v1, v0, p7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aget-boolean v0, v0, p7

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v0, v0, p7

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v1, v1, p7

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getCdmaRoamId(I)I

    move-result v1

    aput v1, v0, p7

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->showBothDataAndVoice(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getMobileVoiceId(I)I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v1, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aput p2, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getMobileVoiceId(I)I

    move-result v1

    aput v1, v0, p7

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v1, v1, p7

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v1

    aput v1, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v2, v0, p7

    goto/16 :goto_1

    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v2, v0, p7

    goto/16 :goto_1
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 3

    const-string v0, "MSimSignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSimNetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 3

    const-string v0, "MSimSignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    iput p3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

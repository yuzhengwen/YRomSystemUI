.class Lcom/android/systemui/volume/VolumePanel$SafetyWarning;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafetyWarning"
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mVolumePanel:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumePanel;Landroid/media/AudioManager;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;-><init>(Lcom/android/systemui/volume/VolumePanel$SafetyWarning;)V

    iput-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mVolumePanel:Lcom/android/systemui/volume/VolumePanel;

    iput-object p3, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x10900d7

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->setView(Landroid/view/View;)V

    const v3, 0x1040764

    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->setTitle(I)V

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    const v5, 0x1040766

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v3, -0x2

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    const v5, 0x1040009

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumePanel$SafetyWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->cleanUp()V

    return-void
.end method

.method private cleanUp()V
    .locals 4

    # getter for: Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mVolumePanel:Lcom/android/systemui/volume/VolumePanel;

    const-wide/16 v2, 0x0

    # invokes: Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V
    invoke-static {v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->access$200(Lcom/android/systemui/volume/VolumePanel;J)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mVolumePanel:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->cleanUp()V

    return-void
.end method

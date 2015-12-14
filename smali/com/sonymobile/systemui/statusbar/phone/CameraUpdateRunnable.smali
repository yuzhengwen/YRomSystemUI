.class public Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;
.super Ljava/lang/Object;
.source "CameraUpdateRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String;

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockPatternUtils:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetCameraRunnable:Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v2, 0x1

    const-class v0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v7, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mOwner:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;

    invoke-direct {v0, p2}, Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mSetCameraRunnable:Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mContext:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mLockPatternUtils:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/systemui/statusbar/phone/RequiredReferenceNullException;
        }
    .end annotation

    const-string v0, "com.sonyericsson.android.camera"

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->require(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mLockPatternUtils:Ljava/lang/ref/WeakReference;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->require(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mLockPatternUtils:Ljava/lang/ref/WeakReference;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->require(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    sget-object v2, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    const-string v4, "com.sonyericsson.android.camera"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    :cond_0
    sget-object v2, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private isCameraDisabledByDpm()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/systemui/statusbar/phone/RequiredReferenceNullException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-static {v6}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->require(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-static {v6}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->require(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isKeyguardSecure()Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v8

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v4, v8

    :cond_1
    :goto_1
    return v4

    :cond_2
    move v0, v7

    goto :goto_0

    :cond_3
    move v4, v7

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v6, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->TAG:Ljava/lang/String;

    const-string v7, "Can\'t get userId"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isCameraDisabledByQuickLaunch()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/systemui/statusbar/phone/RequiredReferenceNullException;
        }
    .end annotation

    const-string v1, "com.sonymobile.camera.quick_launch"

    const-string v0, "off"

    const-string v3, "off"

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->require(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "com.sonymobile.camera.quick_launch"

    const/4 v5, -0x2

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static post(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    sget-object v0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    sget-object v0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static require(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/sonymobile/systemui/statusbar/phone/RequiredReferenceNullException;

    invoke-direct {v1}, Lcom/sonymobile/systemui/statusbar/phone/RequiredReferenceNullException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method

.method private updateCameraVisibility()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/systemui/statusbar/phone/RequiredReferenceNullException;
        }
    .end annotation

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->require(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->getCameraIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mLockPatternUtils:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->require(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->isCameraDisabledByDpm()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->require(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->isCameraDisabledByQuickLaunch()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->mSetCameraRunnable:Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;

    invoke-virtual {v2, v1}, Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;->postToView(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->updateCameraVisibility()V
    :try_end_0
    .catch Lcom/sonymobile/systemui/statusbar/phone/RequiredReferenceNullException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelled camera update:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

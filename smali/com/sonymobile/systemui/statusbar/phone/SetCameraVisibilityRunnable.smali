.class Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;
.super Ljava/lang/Object;
.source "SetCameraVisibilityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/KeyguardAffordanceView;",
            ">;"
        }
    .end annotation
.end field

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public postToView(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;->mVisible:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;->mView:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/phone/CameraUpdateRunnable;->require(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-boolean v2, p0, Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;->mVisible:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V
    :try_end_0
    .catch Lcom/sonymobile/systemui/statusbar/phone/RequiredReferenceNullException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/16 v2, 0x8

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sonymobile/systemui/statusbar/phone/SetCameraVisibilityRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelled SetCameraVisibilityRunnable update:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

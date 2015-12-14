.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;
.super Ljava/lang/Object;
.source "ClockPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionTimeOut"
.end annotation


# instance fields
.field private final mClockPickerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;",
            ">;"
        }
    .end annotation
.end field

.field private mForSelectedPageIndex:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->mForSelectedPageIndex:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->mClockPickerView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->mClockPickerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->mForSelectedPageIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->mForSelectedPageIndex:I

    # invokes: Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->selectPage(I)V
    invoke-static {v1, v2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setForSelectedPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->mForSelectedPageIndex:I

    return-void
.end method

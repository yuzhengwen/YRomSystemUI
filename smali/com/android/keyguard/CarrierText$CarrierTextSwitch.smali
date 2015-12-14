.class Lcom/android/keyguard/CarrierText$CarrierTextSwitch;
.super Ljava/lang/Object;
.source "CarrierText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarrierTextSwitch"
.end annotation


# instance fields
.field private final mCarrierTextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/CarrierText;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSlot:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/CarrierText;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText$CarrierTextSwitch;->mCarrierTextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v5, p0, Lcom/android/keyguard/CarrierText$CarrierTextSwitch;->mCarrierTextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/CarrierText;

    if-eqz v2, :cond_0

    # getter for: Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/keyguard/CarrierText;->access$300(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_0

    # getter for: Lcom/android/keyguard/CarrierText;->mCarrierTextSwitch:Lcom/android/keyguard/CarrierText$CarrierTextSwitch;
    invoke-static {v2}, Lcom/android/keyguard/CarrierText;->access$800(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/CarrierText$CarrierTextSwitch;

    move-result-object v5

    if-eqz v5, :cond_0

    # invokes: Lcom/android/keyguard/CarrierText;->isParentAndSelfVisible()Z
    invoke-static {v2}, Lcom/android/keyguard/CarrierText;->access$900(Lcom/android/keyguard/CarrierText;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/keyguard/CarrierText;->access$300(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;

    move-result-object v5

    array-length v4, v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    # getter for: Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/keyguard/CarrierText;->access$300(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;

    move-result-object v5

    aget-object v5, v5, v3

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/android/keyguard/CarrierText$CarrierTextSwitch;->mCurrentSlot:I

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/android/keyguard/CarrierText$CarrierTextSwitch;->mCurrentSlot:I

    if-ge v5, v4, :cond_3

    # getter for: Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/keyguard/CarrierText;->access$300(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/CarrierText$CarrierTextSwitch;->mCurrentSlot:I

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget v5, p0, Lcom/android/keyguard/CarrierText$CarrierTextSwitch;->mCurrentSlot:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/CarrierText$CarrierTextSwitch;->mCurrentSlot:I

    iget v5, p0, Lcom/android/keyguard/CarrierText$CarrierTextSwitch;->mCurrentSlot:I

    rem-int/2addr v5, v4

    iput v5, p0, Lcom/android/keyguard/CarrierText$CarrierTextSwitch;->mCurrentSlot:I

    const-wide/16 v0, 0xfa0

    # getter for: Lcom/android/keyguard/CarrierText;->mCarrierTextSwitch:Lcom/android/keyguard/CarrierText$CarrierTextSwitch;
    invoke-static {v2}, Lcom/android/keyguard/CarrierText;->access$800(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/CarrierText$CarrierTextSwitch;

    move-result-object v5

    const-wide/16 v6, 0xfa0

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/keyguard/CarrierText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

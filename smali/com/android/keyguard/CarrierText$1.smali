.class Lcom/android/keyguard/CarrierText$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onAirplaneModeChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mShowAPM:Z
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$100(Lcom/android/keyguard/CarrierText;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/android/keyguard/CarrierText;->mNumPhones:I
    invoke-static {}, Lcom/android/keyguard/CarrierText;->access$200()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$300(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    # getter for: Lcom/android/keyguard/CarrierText;->mNumPhones:I
    invoke-static {}, Lcom/android/keyguard/CarrierText;->access$200()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mOperatorSeparator:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$400(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mAirplaneModeText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$500(Lcom/android/keyguard/CarrierText;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mAirplaneModeText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$500(Lcom/android/keyguard/CarrierText;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_2
    # getter for: Lcom/android/keyguard/CarrierText;->mNumPhones:I
    invoke-static {}, Lcom/android/keyguard/CarrierText;->access$200()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # invokes: Lcom/android/keyguard/CarrierText;->shouldDisplaySimStatusOneByOne()Z
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$600(Lcom/android/keyguard/CarrierText;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$300(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    # getter for: Lcom/android/keyguard/CarrierText;->mNumPhones:I
    invoke-static {}, Lcom/android/keyguard/CarrierText;->access$200()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mOperatorSeparator:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$400(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mAirplaneModeText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$500(Lcom/android/keyguard/CarrierText;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mAirplaneModeText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$500(Lcom/android/keyguard/CarrierText;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$000(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/android/keyguard/CarrierText;->mNumPhones:I
    invoke-static {}, Lcom/android/keyguard/CarrierText;->access$200()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$300(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # invokes: Lcom/android/keyguard/CarrierText;->startOrStopCarrierTextSwitch()V
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$700(Lcom/android/keyguard/CarrierText;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/android/keyguard/CarrierText;->mNumPhones:I
    invoke-static {}, Lcom/android/keyguard/CarrierText;->access$200()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$300(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # invokes: Lcom/android/keyguard/CarrierText;->startOrStopCarrierTextSwitch()V
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$700(Lcom/android/keyguard/CarrierText;)V

    return-void
.end method

.method public onSimStateChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$000(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/keyguard/CarrierText;->access$000(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

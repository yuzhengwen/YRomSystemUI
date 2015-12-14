.class Lcom/android/keyguard/KeyguardSimPinView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v0

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSimPinView$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # invokes: Lcom/android/keyguard/KeyguardSimPinView;->closeKeyGuard()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$200(Lcom/android/keyguard/KeyguardSimPinView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSubIdUpdated(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # setter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I
    invoke-static {v0, p2}, Lcom/android/keyguard/KeyguardSimPinView;->access$002(Lcom/android/keyguard/KeyguardSimPinView;I)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # invokes: Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChange()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$100(Lcom/android/keyguard/KeyguardSimPinView;)V

    :cond_0
    return-void
.end method

.method public onSubInfoContentChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "display_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # invokes: Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChange()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$100(Lcom/android/keyguard/KeyguardSimPinView;)V

    :cond_0
    return-void
.end method

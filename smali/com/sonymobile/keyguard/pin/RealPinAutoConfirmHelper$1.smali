.class Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;
.super Ljava/lang/Object;
.source "RealPinAutoConfirmHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->onPasswordLengthIncreased(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    # getter for: Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;
    invoke-static {v0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->access$000(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    # getter for: Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->access$100(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method

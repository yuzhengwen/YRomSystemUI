.class Lcom/sonymobile/lockscreen/IceButton$1;
.super Ljava/lang/Object;
.source "IceButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/lockscreen/IceButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/lockscreen/IceButton;


# direct methods
.method constructor <init>(Lcom/sonymobile/lockscreen/IceButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/lockscreen/IceButton$1;->this$0:Lcom/sonymobile/lockscreen/IceButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/lockscreen/IceButton$1;->this$0:Lcom/sonymobile/lockscreen/IceButton;

    # invokes: Lcom/sonymobile/lockscreen/IceButton;->launchIceContactInfo()V
    invoke-static {v0}, Lcom/sonymobile/lockscreen/IceButton;->access$000(Lcom/sonymobile/lockscreen/IceButton;)V

    return-void
.end method

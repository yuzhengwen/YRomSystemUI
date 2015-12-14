.class Lcom/android/systemui/recents/RecentsActivity$4$1;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/RecentsActivity$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$4$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$4$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$4;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity$4;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mCloseAllButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$4$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$4;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity$4;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->dismissAllTasks()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

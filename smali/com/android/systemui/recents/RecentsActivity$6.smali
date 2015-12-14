.class Lcom/android/systemui/recents/RecentsActivity$6;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->pluginViewEnabled:Z

    if-eqz v3, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v3, :cond_2

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isNavigationBarAreaDrawable:Z

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v0, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isNavigationBarAreaDrawable:Z

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # invokes: Lcom/android/systemui/recents/RecentsActivity;->adjustPluginViewsPos()V
    invoke-static {v2}, Lcom/android/systemui/recents/RecentsActivity;->access$100(Lcom/android/systemui/recents/RecentsActivity;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_3

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

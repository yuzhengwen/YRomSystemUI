.class Lcom/android/systemui/statusbar/MSimSignalClusterView$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "MSimSignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$2;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$2;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    # getter for: Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$400(Lcom/android/systemui/statusbar/MSimSignalClusterView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$2;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    # getter for: Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$300(Lcom/android/systemui/statusbar/MSimSignalClusterView;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$2;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    # getter for: Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$300(Lcom/android/systemui/statusbar/MSimSignalClusterView;)Landroid/database/ContentObserver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$2;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    # getter for: Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$500(Lcom/android/systemui/statusbar/MSimSignalClusterView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "excluded_system_bar_icons"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$2;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    # getter for: Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$300(Lcom/android/systemui/statusbar/MSimSignalClusterView;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

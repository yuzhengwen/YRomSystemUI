.class public Lcom/sonymobile/systemui/recent/RemotePluginView;
.super Landroid/widget/FrameLayout;
.source "RemotePluginView.java"


# instance fields
.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mInitialHeight:I

.field private mLookupKey:Ljava/lang/String;

.field private mPluginView:Landroid/view/View;

.field private mPluginViewPackage:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/recent/RemotePluginView;->setupPluginView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/recent/RemotePluginView;->readAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/recent/RemotePluginView;->setupPluginView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/recent/RemotePluginView;->readAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/recent/RemotePluginView;->setupPluginView(Landroid/content/Context;)V

    return-void
.end method

.method private static createPluginViewContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPluginView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/recent/RemotePluginView;->getPluginViewPackage(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sonymobile/systemui/recent/RemotePluginView;->validatePluginView(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sonymobile/systemui/recent/RemotePluginView;->createPluginViewContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lcom/sonymobile/systemui/recent/RemotePluginView;->instantiatePluginView(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getPluginViewPackage(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mPluginViewPackage:Landroid/content/ComponentName;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mLookupKey:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mLookupKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v2, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mPluginViewPackage:Landroid/content/ComponentName;

    :goto_0
    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mPluginViewPackage:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static instantiatePluginView(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;)Landroid/view/View;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/view/View;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_0

    :catch_4
    move-exception v4

    goto :goto_0

    :catch_5
    move-exception v4

    goto :goto_0

    :catch_6
    move-exception v4

    goto :goto_0
.end method

.method private readAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget-object v1, Lcom/android/systemui/R$styleable;->RemotePluginView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mLookupKey:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setupPluginView(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/recent/RemotePluginView;->getPluginView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sonymobile/systemui/recent/RemotePluginView;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    iput v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mInitialHeight:I

    :goto_1
    return-void

    :cond_1
    const/16 v2, 0x8

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static validatePluginView(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sonymobile.permission.TASK_SWITCHER_PLUGIN_VIEW"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public prepareShowPluginViewAnimation()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/recent/RemotePluginView;->setVisibility(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    if-nez v0, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public startHidePluginViewAnimation()V
    .locals 3

    invoke-virtual {p0}, Lcom/sonymobile/systemui/recent/RemotePluginView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/recent/RemotePluginView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/sonymobile/systemui/recent/RemotePluginView;->clearAnimation()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/recent/RemotePluginView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startShowPluginViewAnimation()V
    .locals 4

    invoke-virtual {p0}, Lcom/sonymobile/systemui/recent/RemotePluginView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/recent/RemotePluginView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sonymobile/systemui/recent/RemotePluginView;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/recent/RemotePluginView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/recent/RemotePluginView;->setVisibility(I)V

    goto :goto_0
.end method

.class public Lcom/android/systemui/recent/RecentsVerticalScrollView;
.super Landroid/widget/ScrollView;
.source "RecentsVerticalScrollView.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field private mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

.field protected mLastScrollPosition:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNumItemsInOneScreenful:I

.field private mOnScrollListener:Ljava/lang/Runnable;

.field private mRecycledViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/recent/RecentsPanelView;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/SwipeHelper;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsVerticalScrollView;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollPositionOfMostRecent()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->update()V

    return-void
.end method

.method private addToRecycledViews(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private scrollPositionOfMostRecent()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0

    return-void
.end method

.method private update()V
    .locals 17

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    if-ge v4, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v15, v13}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->recycleView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v11

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v15}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v15

    if-ge v4, v15, :cond_4

    const/4 v8, 0x0

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v4, v8, v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v15, v14}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->addViewCallback(Landroid/view/View;)V

    :cond_2
    new-instance v7, Lcom/android/systemui/recent/RecentsVerticalScrollView$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$1;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    new-instance v15, Lcom/android/systemui/recent/RecentsVerticalScrollView$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$2;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    new-instance v5, Lcom/android/systemui/recent/RecentsVerticalScrollView$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/android/systemui/recent/RecentsVerticalScrollView$3;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;)V

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v10, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    new-instance v6, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14, v10}, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;Landroid/view/View;)V

    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v10, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v15, 0x7f1001af

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v15, " "

    invoke-virtual {v1, v15}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v15, 0x7f1001b3

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    new-instance v12, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    return-void
.end method

.method public drawFadedEdges(Landroid/graphics/Canvas;IIII)V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->isPaddingOffsetRequired()Z

    move-result v13

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {p0, v13}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getFadeTop(Z)I

    move-result v1

    add-int v4, p4, v1

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getTopFadingEdgeStrength()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getBottomFadingEdgeStrength()F

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getPaddingTop()I

    move-result v12

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFFI)V

    :cond_0
    return-void
.end method

.method public findViewForTask(I)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    iget v3, v3, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const v0, 0x7f1001ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->getHorizontalFadingEdgeLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->getVerticalFadingEdgeLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->isHardwareAccelerated()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->onAttachedToWindowCallback(Landroid/widget/LinearLayout;Z)V

    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setScrollbarFadingEnabled(Z)V

    const v1, 0x7f1001b8

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setOverScrollEffectPadding(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RecentsPanelView"

    const-string v1, "onInterceptTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollPositionOfMostRecent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLastScrollPosition:I

    new-instance v1, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->dismissChild(Landroid/view/View;)V

    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
    .locals 8

    const/high16 v7, -0x80000000

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    new-instance v6, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setMinSwipeProgress(F)V

    return-void
.end method

.method public setOnScrollListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;
.super Ljava/lang/Object;
.source "LockscreenWallpaperStoredMotionEventData.java"


# instance fields
.field private mActionMask:I

.field private mView:Landroid/view/View;

.field private mXCoord:I

.field private mYCoord:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStoredMotionEvent()Landroid/view/MotionEvent;
    .locals 8

    const-wide/16 v0, 0x0

    iget v4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->mActionMask:I

    iget v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->mXCoord:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->mYCoord:I

    int-to-float v6, v2

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public getStoredView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->mView:Landroid/view/View;

    return-object v0
.end method

.method public updateWithMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->mActionMask:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->mXCoord:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->mYCoord:I

    return-void
.end method

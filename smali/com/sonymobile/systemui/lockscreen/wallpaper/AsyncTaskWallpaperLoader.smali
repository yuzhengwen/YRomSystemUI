.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;
.super Landroid/os/AsyncTask;
.source "AsyncTaskWallpaperLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoadWallpaperInterface:Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;

.field private final mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

.field private final mUserId:I

.field private final mWallpaperUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;Landroid/net/Uri;ILcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

    iput p4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mUserId:I

    iput-object p3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mWallpaperUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mLoadWallpaperInterface:Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mUserId:I

    invoke-static {v4, v5}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperUtils;->getUserSpecificContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

    iget-object v5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mWallpaperUri:Landroid/net/Uri;

    invoke-virtual {v4, v2, v5}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;->openInputStreamForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :cond_2
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "AsyncTaskWallpaperLoader"

    const-string v5, "IOException when closing stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v4

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v4, "AsyncTaskWallpaperLoader"

    const-string v5, "IOException when closing stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_1
    throw v4

    :catch_3
    move-exception v0

    const-string v5, "AsyncTaskWallpaperLoader"

    const-string v6, "IOException when closing stream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mLoadWallpaperInterface:Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;

    iget v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mUserId:I

    invoke-interface {v0, p1, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;->wallpaperLoaded(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

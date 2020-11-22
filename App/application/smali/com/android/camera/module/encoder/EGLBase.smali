.class public Lcom/android/camera/module/encoder/EGLBase;
.super Ljava/lang/Object;
.source "EGLBase.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/encoder/EGLBase$EglSurface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EGLBase"


# instance fields
.field private mDefaultContext:Landroid/opengl/EGLContext;

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;


# direct methods
.method public constructor <init>(Landroid/opengl/EGLContext;ZZ)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 40
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglContext:Landroid/opengl/EGLContext;

    .line 41
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 42
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mDefaultContext:Landroid/opengl/EGLContext;

    .line 103
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string v1, "EGLBase"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/encoder/EGLBase;->init(Landroid/opengl/EGLContext;ZZ)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/encoder/EGLBase;Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/camera/module/encoder/EGLBase;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/module/encoder/EGLBase;Landroid/opengl/EGLSurface;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/camera/module/encoder/EGLBase;->makeCurrent(Landroid/opengl/EGLSurface;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/module/encoder/EGLBase;Landroid/opengl/EGLSurface;)I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/camera/module/encoder/EGLBase;->swap(Landroid/opengl/EGLSurface;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/module/encoder/EGLBase;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/camera/module/encoder/EGLBase;->makeDefault()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/module/encoder/EGLBase;Landroid/opengl/EGLSurface;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/camera/module/encoder/EGLBase;->destroyWindowSurface(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 2

    .line 302
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_0

    return-void

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL error: 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createContext(Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;
    .locals 4

    .line 218
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string v1, "createContext"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 220
    fill-array-data v0, :array_0

    .line 224
    iget-object v1, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglConfig:Landroid/opengl/EGLConfig;

    const/4 v3, 0x0

    .line 225
    invoke-static {v1, v2, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    const-string v0, "eglCreateContext"

    .line 226
    invoke-direct {p0, v0}, Lcom/android/camera/module/encoder/EGLBase;->checkEglError(Ljava/lang/String;)V

    return-object p1

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 3

    .line 249
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createWindowSurface: nativeWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 256
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v2, p0, p1, v0, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 259
    sget-object p1, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string v0, "eglCreateWindowSurface"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private destroyContext()V
    .locals 4

    .line 231
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string v1, "destroyContext"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v0

    const-string v1, " context="

    if-nez v0, :cond_0

    .line 234
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyContext: display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglContext:Landroid/opengl/EGLContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyContext: err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglContext:Landroid/opengl/EGLContext;

    .line 238
    iget-object v2, p0, Lcom/android/camera/module/encoder/EGLBase;->mDefaultContext:Landroid/opengl/EGLContext;

    if-eq v2, v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyDefaultContext: display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/encoder/EGLBase;->mDefaultContext:Landroid/opengl/EGLContext;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyDefaultContext: err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mDefaultContext:Landroid/opengl/EGLContext;

    :cond_2
    return-void
.end method

.method private destroyWindowSurface(Landroid/opengl/EGLSurface;)V
    .locals 3

    .line 290
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string v1, "destroySurface>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq p1, v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v0, v0, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 294
    iget-object p0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 296
    :cond_0
    sget-object p0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 297
    sget-object p0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string p1, "destroySurface<<<"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getConfig(ZZ)Landroid/opengl/EGLConfig;
    .locals 9

    const/16 v0, 0x11

    new-array v2, v0, [I

    .line 309
    fill-array-data v2, :array_0

    const/16 v0, 0xa

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    const/16 v1, 0x3025

    aput v1, v2, v0

    const/16 v0, 0xc

    const/16 v1, 0x10

    aput v1, v2, p1

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 330
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p2, v1, :cond_1

    add-int/lit8 p2, v0, 0x1

    const/16 v1, 0x3142

    .line 331
    aput v1, v2, v0

    add-int/lit8 v0, p2, 0x1

    .line 332
    aput p1, v2, p2

    .line 334
    :cond_1
    array-length p2, v2

    sub-int/2addr p2, p1

    :goto_0
    if-lt p2, v0, :cond_2

    const/16 v1, 0x3038

    .line 335
    aput v1, v2, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    new-array p2, p1, [Landroid/opengl/EGLConfig;

    new-array v7, p1, [I

    .line 339
    iget-object v1, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, p2

    const/4 v8, 0x0

    move-object v4, p2

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    if-nez p0, :cond_3

    .line 342
    sget-object p0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string p1, "unable to find RGBA8888 /  EGLConfig"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    .line 345
    aget-object p0, p2, p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
        0x3038
        0x3038
        0x3038
        0x3038
        0x3038
        0x3038
    .end array-data
.end method

.method private init(Landroid/opengl/EGLContext;ZZ)V
    .locals 4

    .line 143
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 148
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 149
    iget-object v1, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    .line 154
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v1, v2, :cond_2

    .line 161
    invoke-direct {p0, p2, p3}, Lcom/android/camera/module/encoder/EGLBase;->getConfig(ZZ)Landroid/opengl/EGLConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 162
    iget-object p2, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglConfig:Landroid/opengl/EGLConfig;

    if-eqz p2, :cond_1

    .line 166
    invoke-direct {p0, p1}, Lcom/android/camera/module/encoder/EGLBase;->createContext(Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglContext:Landroid/opengl/EGLContext;

    goto :goto_1

    .line 163
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "chooseConfig failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    new-array p1, v3, [I

    .line 170
    iget-object p2, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p3, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglContext:Landroid/opengl/EGLContext;

    const/16 v1, 0x3098

    invoke-static {p2, p3, v1, p1, v0}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 171
    sget-object p2, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EGLContext created, client version "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v0

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/android/camera/module/encoder/EGLBase;->makeDefault()V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 156
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglInitialize failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglGetDisplay failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EGL already set up"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private makeCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 2

    .line 181
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string v1, "makeCurrent"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string v1, "makeCurrent: eglDisplay not initialized"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 185
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, p1, p1, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 194
    sget-object p0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent: err="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 186
    :cond_3
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    const/16 p1, 0x300b

    if-ne p0, p1, :cond_4

    .line 188
    sget-object p0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string p1, "makeCurrent: returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method private makeDefault()V
    .locals 2

    .line 201
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string v1, "makeDefault"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p0, v0, v0, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 203
    sget-object p0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDefault: err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private swap(Landroid/opengl/EGLSurface;)I
    .locals 2

    .line 208
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string v1, "swap"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 210
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    .line 211
    sget-object p1, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "swap: err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/16 p0, 0x3000

    return p0
.end method


# virtual methods
.method public createFromSurface(Ljava/lang/Object;)Lcom/android/camera/module/encoder/EGLBase$EglSurface;
    .locals 2

    .line 119
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string v1, "createFromSurface"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/encoder/EGLBase$EglSurface;-><init>(Lcom/android/camera/module/encoder/EGLBase;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->makeCurrent()V

    return-object v0
.end method

.method public querySurface(Landroid/opengl/EGLSurface;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 138
    iget-object p0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 139
    aget p0, v0, v1

    return p0
.end method

.method public release()V
    .locals 2

    .line 108
    sget-object v0, Lcom/android/camera/module/encoder/EGLBase;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/camera/module/encoder/EGLBase;->destroyContext()V

    .line 111
    iget-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 112
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 114
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 115
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/android/camera/module/encoder/EGLBase;->mEglContext:Landroid/opengl/EGLContext;

    return-void
.end method

.class abstract Lcom/android/camera/ui/GLTextureView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "GLTextureView.java"

# interfaces
.implements Lcom/android/camera/ui/GLTextureView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Lcom/android/camera/ui/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GLTextureView;[I)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$BaseConfigChooser;->this$0:Lcom/android/camera/ui/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    invoke-direct {p0, p2}, Lcom/android/camera/ui/GLTextureView$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$BaseConfigChooser;->mConfigSpec:[I

    return-void
.end method

.method private filterConfigSpec([I)[I
    .locals 3

    .line 658
    iget-object p0, p0, Lcom/android/camera/ui/GLTextureView$BaseConfigChooser;->this$0:Lcom/android/camera/ui/GLTextureView;

    invoke-static {p0}, Lcom/android/camera/ui/GLTextureView;->access$200(Lcom/android/camera/ui/GLTextureView;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-object p1

    .line 664
    :cond_0
    array-length p0, p1

    add-int/lit8 v0, p0, 0x2

    .line 665
    new-array v0, v0, [I

    add-int/lit8 v1, p0, -0x1

    const/4 v2, 0x0

    .line 666
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x3040

    .line 667
    aput p1, v0, v1

    const/4 p1, 0x4

    .line 668
    aput p1, v0, p0

    add-int/lit8 p0, p0, 0x1

    const/16 p1, 0x3038

    .line 669
    aput p1, v0, p0

    return-object v0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 628
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$BaseConfigChooser;->mConfigSpec:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 633
    aget v5, v0, v1

    if-lez v5, :cond_2

    .line 640
    new-array v7, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 641
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$BaseConfigChooser;->mConfigSpec:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {p0, p1, p2, v7}, Lcom/android/camera/ui/GLTextureView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 647
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No config chosen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 643
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "eglChooseConfig#2 failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 636
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No configs match configSpec"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 630
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "eglChooseConfig failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method

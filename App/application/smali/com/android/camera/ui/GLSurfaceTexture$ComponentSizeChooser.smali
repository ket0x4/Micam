.class Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;
.super Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lcom/android/camera/ui/GLSurfaceTexture;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GLSurfaceTexture;IIIIII)V
    .locals 4

    .line 627
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->this$0:Lcom/android/camera/ui/GLSurfaceTexture;

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x3023

    aput v3, v0, v2

    const/4 v2, 0x3

    aput p3, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0x3022

    aput v3, v0, v2

    const/4 v2, 0x5

    aput p4, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x3021

    aput v3, v0, v2

    const/4 v2, 0x7

    aput p5, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x3025

    aput v3, v0, v2

    const/16 v2, 0x9

    aput p6, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0x3026

    aput v3, v0, v2

    const/16 v2, 0xb

    aput p7, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 628
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;-><init>(Lcom/android/camera/ui/GLSurfaceTexture;[I)V

    new-array p1, v1, [I

    .line 636
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mValue:[I

    .line 637
    iput p2, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mRedSize:I

    .line 638
    iput p3, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mGreenSize:I

    .line 639
    iput p4, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mBlueSize:I

    .line 640
    iput p5, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mAlphaSize:I

    .line 641
    iput p6, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mDepthSize:I

    .line 642
    iput p7, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mStencilSize:I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 675
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mValue:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .line 648
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v8, p3, v1

    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    .line 649
    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3026

    .line 651
    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    .line 653
    iget v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mDepthSize:I

    if-lt v9, v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mStencilSize:I

    if-lt v2, v3, :cond_0

    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    .line 654
    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3023

    .line 656
    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v6, 0x3022

    .line 658
    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v6, 0x3021

    .line 660
    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    .line 662
    iget v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mRedSize:I

    if-ne v9, v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mGreenSize:I

    if-ne v10, v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mBlueSize:I

    if-ne v11, v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mAlphaSize:I

    if-ne v2, v3, :cond_0

    return-object v8

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

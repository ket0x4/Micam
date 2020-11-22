.class public Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawBasicTexAttribute.java"


# instance fields
.field public mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field public mHeight:I

.field public mIsSnapshot:Z

.field public mWidth:I

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 15
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    .line 16
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    .line 17
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    .line 18
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    .line 19
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    const/4 p1, 0x5

    .line 20
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    return-void
.end method


# virtual methods
.method public init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 0

    .line 44
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    .line 45
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    .line 46
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    .line 47
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    .line 48
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    const/4 p1, 0x5

    .line 49
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    return-object p0
.end method

.method public init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 0

    .line 56
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    .line 57
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    .line 58
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    .line 59
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    .line 60
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    const/4 p1, 0x5

    .line 61
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    .line 62
    iput-boolean p6, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    return-object p0
.end method

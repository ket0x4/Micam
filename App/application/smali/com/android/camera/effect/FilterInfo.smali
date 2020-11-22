.class public Lcom/android/camera/effect/FilterInfo;
.super Ljava/lang/Object;
.source "FilterInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/camera/effect/FilterInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final AI_SCENE_FILTER_ID_0_NONE:I

.field public static final FILTER_ID_ANALOG:I

.field public static final FILTER_ID_BIGFACE:I

.field public static final FILTER_ID_BLACKWHITE:I

.field public static final FILTER_ID_BLUR:I

.field public static final FILTER_ID_COLORPOP:I

.field public static final FILTER_ID_FISHEYE:I

.field public static final FILTER_ID_GAUSSIAN:I

.field public static final FILTER_ID_GRADIENTER:I

.field public static final FILTER_ID_ICY:I

.field public static final FILTER_ID_LOMO:I

.field public static final FILTER_ID_LONGFACE:I

.field public static final FILTER_ID_MATTE:I

.field public static final FILTER_ID_MIRROR:I

.field public static final FILTER_ID_MONO:I

.field public static final FILTER_ID_MOSAIC:I

.field public static final FILTER_ID_NONE:I

.field public static final FILTER_ID_PEAKINGMF:I

.field public static final FILTER_ID_RUSTIC:I

.field public static final FILTER_ID_SKETCH:I

.field public static final FILTER_ID_SMALLFACE:I

.field public static final FILTER_ID_STICKER:I

.field public static final FILTER_ID_TILTSHIFT:I

.field public static final FILTER_ID_TUNNEL:I

.field public static final FILTER_ID_VIVID:I

.field public static final RENDER_ID_MAKEUP:I


# instance fields
.field private mCategory:I

.field private mIconResId:I

.field private mIndex:I

.field private mIsNeedRect:Z

.field private mNameResId:I

.field private mOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x101

    .line 31
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    const/16 v1, 0x102

    .line 32
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    const/16 v1, 0x103

    .line 33
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    const/16 v1, 0x104

    .line 34
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    const/16 v1, 0x105

    .line 35
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    const/16 v1, 0x106

    .line 36
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    const/4 v0, 0x1

    const/16 v1, 0x200

    .line 38
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/16 v1, 0x201

    .line 39
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_LOMO:I

    const/16 v1, 0x202

    .line 40
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_COLORPOP:I

    const/16 v1, 0x203

    .line 41
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RUSTIC:I

    const/16 v1, 0x204

    .line 42
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_ICY:I

    const/16 v1, 0x205

    .line 43
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_VIVID:I

    const/16 v1, 0x206

    .line 44
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_ANALOG:I

    const/16 v1, 0x207

    .line 45
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_MATTE:I

    const/16 v1, 0x208

    .line 46
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_MONO:I

    const/16 v1, 0x209

    .line 47
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLACKWHITE:I

    const/16 v1, 0x20a

    .line 48
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_SKETCH:I

    const/16 v1, 0x20b

    .line 49
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BIGFACE:I

    const/16 v1, 0x20c

    .line 50
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_SMALLFACE:I

    const/16 v1, 0x20d

    .line 51
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_LONGFACE:I

    const/16 v1, 0x20e

    .line 52
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_FISHEYE:I

    const/16 v1, 0x20f

    .line 53
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_MOSAIC:I

    const/16 v1, 0x210

    .line 54
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v1

    sput v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_MIRROR:I

    const/16 v1, 0x211

    .line 55
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TUNNEL:I

    const/4 v0, 0x4

    const/16 v1, 0x301

    .line 57
    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    .line 60
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    sput v0, Lcom/android/camera/effect/FilterInfo;->AI_SCENE_FILTER_ID_0_NONE:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6

    .line 74
    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v1

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/android/camera/effect/FilterInfo;->mCategory:I

    .line 79
    iput p2, p0, Lcom/android/camera/effect/FilterInfo;->mIndex:I

    .line 80
    iput p5, p0, Lcom/android/camera/effect/FilterInfo;->mOrder:I

    .line 81
    iput p3, p0, Lcom/android/camera/effect/FilterInfo;->mNameResId:I

    .line 82
    iput p4, p0, Lcom/android/camera/effect/FilterInfo;->mIconResId:I

    return-void
.end method

.method public static getCategory(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getId(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method public static getIndex(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/effect/FilterInfo;)I
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/camera/effect/FilterInfo;->mOrder:I

    iget p1, p1, Lcom/android/camera/effect/FilterInfo;->mOrder:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/FilterInfo;->compareTo(Lcom/android/camera/effect/FilterInfo;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 140
    instance-of v1, p1, Lcom/android/camera/effect/FilterInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget v1, p0, Lcom/android/camera/effect/FilterInfo;->mCategory:I

    check-cast p1, Lcom/android/camera/effect/FilterInfo;

    iget v2, p1, Lcom/android/camera/effect/FilterInfo;->mCategory:I

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/android/camera/effect/FilterInfo;->mIndex:I

    iget p1, p1, Lcom/android/camera/effect/FilterInfo;->mIndex:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getIconResId()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/android/camera/effect/FilterInfo;->mIconResId:I

    return p0
.end method

.method public getId()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/camera/effect/FilterInfo;->mCategory:I

    shl-int/lit8 v0, v0, 0x10

    iget p0, p0, Lcom/android/camera/effect/FilterInfo;->mIndex:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getNameResId()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/camera/effect/FilterInfo;->mNameResId:I

    return p0
.end method

.method public isNeedRect()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/camera/effect/FilterInfo;->mIsNeedRect:Z

    return p0
.end method

.method public setNeedRect(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/android/camera/effect/FilterInfo;->mIsNeedRect:Z

    return-void
.end method

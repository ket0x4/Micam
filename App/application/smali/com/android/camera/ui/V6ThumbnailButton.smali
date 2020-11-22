.class public Lcom/android/camera/ui/V6ThumbnailButton;
.super Lcom/android/camera/ui/V6BottomAnimationViewGroup;
.source "V6ThumbnailButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BORDER:I


# instance fields
.field public mImage:Lcom/android/camera/ui/RotateImageView;

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mValidThumbnail:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 16
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6ThumbnailButton;->BORDER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 90
    iget-boolean p1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mValidThumbnail:Z

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f090115

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 28
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onFinishInflate()V

    const v0, 0x7f090116

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    .line 30
    invoke-virtual {p0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget v2, Lcom/android/camera/ui/V6ThumbnailButton;->BORDER:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    iget-object p0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

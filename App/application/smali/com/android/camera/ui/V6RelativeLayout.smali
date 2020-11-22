.class public Lcom/android/camera/ui/V6RelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "V6RelativeLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/V6Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public findChildrenById(I)Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setOrientation(IZ)V
    .locals 4

    .line 79
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 81
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 82
    instance-of v3, v2, Lcom/android/camera/ui/Rotatable;

    if-eqz v3, :cond_0

    .line 83
    check-cast v2, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

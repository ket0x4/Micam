.class public Lcom/android/camera/animation/FragmentAnimationFactory;
.super Ljava/lang/Object;
.source "FragmentAnimationFactory.java"


# direct methods
.method public static varargs wrapperAnimation([I)Landroid/view/animation/Animation;
    .locals 23

    move-object/from16 v0, p0

    .line 16
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 18
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, v0, v3

    const/16 v5, 0xa1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eq v4, v5, :cond_3

    const/16 v5, 0xa2

    if-eq v4, v5, :cond_2

    const/16 v5, 0xa7

    if-eq v4, v5, :cond_1

    const/16 v5, 0xa8

    if-eq v4, v5, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_1

    .line 23
    :cond_1
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v14, v4

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v13, v4

    goto :goto_1

    .line 40
    :cond_2
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_1

    .line 37
    :cond_3
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v13, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_1
    const-wide/16 v4, 0xc8

    .line 47
    invoke-virtual {v13, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    sget-object v4, Lcom/android/camera/animation/AnimationDelegate;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 50
    invoke-virtual {v1, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

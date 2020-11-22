.class public Lcom/android/camera/fragment/BaseFragmentDelegate;
.super Ljava/lang/Object;
.source "BaseFragmentDelegate.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;


# instance fields
.field private animationComposite:Lcom/android/camera/animation/AnimationComposite;

.field private currentFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/android/camera/Camera;

.field private originalFragments:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 91
    new-instance p1, Lcom/android/camera/animation/AnimationComposite;

    invoke-direct {p1}, Lcom/android/camera/animation/AnimationComposite;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    .line 92
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    return-void
.end method

.method private applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;",
            "Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 277
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 281
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/BaseFragmentOperation;

    .line 291
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v3

    .line 292
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    .line 295
    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 401
    :pswitch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_1

    .line 403
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 405
    :cond_1
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v4, v3, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto :goto_0

    :pswitch_1
    if-eq v3, v4, :cond_2

    .line 385
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v5, :cond_2

    .line 387
    invoke-virtual {v5, v6}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 388
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 392
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    .line 393
    invoke-virtual {v5, v3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 394
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 395
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 397
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    iget v8, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move v8, v7

    .line 357
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 358
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_3

    goto :goto_3

    .line 362
    :cond_3
    iget-object v10, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v10, v9}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 363
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v10, :cond_5

    if-eq v9, v3, :cond_4

    .line 367
    invoke-virtual {v10, v6}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    goto :goto_2

    .line 369
    :cond_4
    invoke-virtual {v10, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 371
    :goto_2
    invoke-virtual {v1, v10}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 375
    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    .line 376
    invoke-virtual {v5, v3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 377
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 378
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 380
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 335
    :pswitch_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v5, :cond_7

    .line 337
    invoke-virtual {v5, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 338
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 340
    :cond_7
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v5, :cond_8

    .line 342
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 343
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_4

    .line 345
    :cond_8
    invoke-direct {p0, v7, v4, v3, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v5

    .line 346
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 349
    :goto_4
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v6

    invoke-virtual {v3, v6, v5}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 351
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 320
    :pswitch_4
    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v4, v3}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 321
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_9

    .line 323
    invoke-virtual {v4, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 324
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 329
    :cond_9
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v4, v3, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 307
    :pswitch_5
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3, v4}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 309
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v3, :cond_a

    .line 311
    invoke-virtual {v3, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 312
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 315
    :cond_a
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 297
    :pswitch_6
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v3

    .line 298
    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5, v3}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 299
    invoke-direct {p0, v7, v4, v3, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    .line 300
    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v3, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 301
    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 303
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 412
    :cond_b
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    .line 278
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "need operation info"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;
    .locals 1

    const/16 p0, 0xf0

    const/4 v0, 0x0

    if-eq p2, p0, :cond_6

    const/16 p0, 0xf1

    if-eq p2, p0, :cond_5

    const/16 p0, 0xf3

    if-eq p2, p0, :cond_4

    const/16 p0, 0xf4

    if-eq p2, p0, :cond_3

    const/16 p0, 0xf7

    if-eq p2, p0, :cond_2

    const/16 p0, 0xff

    if-eq p2, p0, :cond_1

    const/16 p0, 0xff7

    if-eq p2, p0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 596
    :pswitch_0
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualStereo;

    invoke-direct {v0}, Lcom/android/camera/fragment/dual/FragmentDualStereo;-><init>()V

    goto :goto_0

    .line 592
    :pswitch_1
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;-><init>()V

    goto :goto_0

    .line 588
    :pswitch_2
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomIntentDone;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;-><init>()V

    goto :goto_0

    .line 580
    :pswitch_3
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;-><init>()V

    goto :goto_0

    .line 584
    :pswitch_4
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;-><init>()V

    goto :goto_0

    .line 576
    :pswitch_5
    new-instance v0, Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentPanorama;-><init>()V

    goto :goto_0

    .line 564
    :pswitch_6
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;-><init>()V

    goto :goto_0

    .line 560
    :pswitch_7
    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBeauty;-><init>()V

    goto :goto_0

    .line 552
    :pswitch_8
    new-instance v0, Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentFilter;-><init>()V

    goto :goto_0

    .line 568
    :pswitch_9
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;-><init>()V

    goto :goto_0

    .line 600
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/FragmentScreenLight;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentScreenLight;-><init>()V

    goto :goto_0

    .line 572
    :cond_1
    new-instance v0, Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-direct {v0}, Lcom/android/camera/fragment/sticker/FragmentSticker;-><init>()V

    goto :goto_0

    .line 556
    :cond_2
    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-direct {v0}, Lcom/android/camera/fragment/manually/FragmentManually;-><init>()V

    goto :goto_0

    .line 548
    :cond_3
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;-><init>()V

    goto :goto_0

    .line 544
    :cond_4
    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentMainContent;-><init>()V

    goto :goto_0

    .line 540
    :cond_5
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomAction;-><init>()V

    .line 604
    :goto_0
    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 605
    invoke-virtual {v0, p4}, Lcom/android/camera/fragment/BaseFragment;->setLifecycleListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 606
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    xor-int/lit8 p0, p1, 0x1

    .line 607
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/BaseFragment;->setEnableClickInitValue(Z)V

    :cond_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xff0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initCurrentFragments(Landroid/util/SparseIntArray;)V
    .locals 5

    .line 209
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 210
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCurrentFragments(III)V
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_5

    .line 508
    :goto_0
    :pswitch_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_5

    .line 509
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_0

    .line 510
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 498
    :goto_1
    :pswitch_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 499
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_1

    .line 500
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 504
    :cond_2
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 493
    :pswitch_2
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 494
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 489
    :pswitch_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 480
    :goto_3
    :pswitch_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_5

    .line 481
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_3

    .line 482
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 472
    :goto_4
    :pswitch_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_5

    .line 473
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_4

    .line 474
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 467
    :pswitch_6
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 468
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public delegateEvent(I)V
    .locals 9

    .line 619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f090023

    const/16 v2, 0xf1

    const v3, 0x7f090020

    const v4, 0x7f090019

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const p1, 0x7f0900c7

    .line 712
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_0

    .line 713
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff7

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 715
    :cond_0
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 702
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-eq p1, v2, :cond_9

    .line 703
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 678
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v3, 0xff3

    const v5, 0x7f090021

    const v6, 0x7f090073

    const v7, 0x7f090022

    const v8, 0x7f090074

    if-eq p1, v3, :cond_2

    .line 679
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p1

    if-nez p1, :cond_1

    .line 683
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_1
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 688
    :cond_2
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p1

    if-nez p1, :cond_3

    .line 692
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    :cond_3
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 696
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 670
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xff2

    if-eq p1, v1, :cond_4

    .line 671
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 673
    :cond_4
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 646
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v5, 0xff

    if-eq p1, v5, :cond_5

    .line 648
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 651
    :cond_5
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 662
    :pswitch_5
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xfc

    if-eq p1, v1, :cond_6

    .line 663
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 665
    :cond_6
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 636
    :pswitch_6
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xfb

    if-eq p1, v1, :cond_7

    .line 638
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 640
    :cond_7
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 626
    :pswitch_7
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xfa

    if-eq p1, v1, :cond_8

    .line 628
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 630
    :cond_8
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :goto_0
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_1
    const/4 p1, 0x0

    .line 721
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delegateMode(Lio/reactivex/Completable;IZLcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/Disposable;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 238
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_1

    .line 258
    new-instance v1, Lcom/android/camera/fragment/BaseFragmentDelegate$1;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/fragment/BaseFragmentDelegate$1;-><init>(Lcom/android/camera/fragment/BaseFragmentDelegate;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 270
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/camera/animation/AnimationComposite;->dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;IZ)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public getActiveFragment(I)I
    .locals 0

    .line 726
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 727
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p0, 0xf0

    return p0

    .line 730
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    return-object p0
.end method

.method public getOriginalFragment(I)I
    .locals 1

    .line 735
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const/16 v0, 0xf0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public init(Landroid/support/v4/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->registerProtocol()V

    const/4 v2, 0x1

    const/16 v3, 0xf0

    const/16 v4, 0xf4

    .line 126
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v4

    const/16 v5, 0xf7

    .line 130
    invoke-direct {v0, v2, v5, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v5

    const/16 v6, 0xff1

    .line 132
    invoke-direct {v0, v2, v6, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v6

    const/16 v7, 0xf1

    .line 134
    invoke-direct {v0, v2, v7, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v7

    const/16 v8, 0xf3

    .line 136
    invoke-direct {v0, v2, v8, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v8

    const/16 v9, 0xff0

    .line 138
    invoke-direct {v0, v2, v9, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v9

    const/16 v10, 0xff7

    .line 140
    invoke-direct {v0, v2, v10, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v10

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v11

    .line 143
    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f090023

    invoke-virtual {v11, v13, v6, v12}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 144
    invoke-virtual {v7}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v12

    const v14, 0x7f090019

    invoke-virtual {v11, v14, v7, v12}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 145
    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v12

    const v15, 0x7f090074

    invoke-virtual {v11, v15, v4, v12}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 147
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v12

    const v15, 0x7f090022

    invoke-virtual {v11, v15, v5, v12}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v12

    const v15, 0x7f090073

    invoke-virtual {v11, v15, v8, v12}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 149
    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v12

    const v15, 0x7f0900a1

    invoke-virtual {v11, v15, v9, v12}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 150
    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v12

    const v15, 0x7f0900c7

    invoke-virtual {v11, v15, v10, v12}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 152
    invoke-virtual {v11, v10}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 158
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xff4

    .line 159
    invoke-direct {v0, v2, v12, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v2

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    const/4 v2, 0x0

    :goto_0
    const v12, 0x7f090021

    if-eqz v2, :cond_1

    .line 165
    iget-object v15, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v14

    invoke-virtual {v15, v12, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    iget-object v14, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v15

    invoke-virtual {v14, v15, v2}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 167
    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v2, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 169
    :cond_1
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v12, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    :goto_1
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v12

    invoke-virtual {v2, v13, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v12

    const v13, 0x7f090019

    invoke-virtual {v2, v13, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v12

    const v13, 0x7f090074

    invoke-virtual {v2, v13, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v12, 0x7f090020

    invoke-virtual {v2, v12, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v12

    const v13, 0x7f090022

    invoke-virtual {v2, v13, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v12

    const v13, 0x7f090073

    invoke-virtual {v2, v13, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v12

    const v13, 0x7f0900a1

    invoke-virtual {v2, v13, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 183
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v12, 0x7f0900c7

    invoke-virtual {v2, v12, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 188
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 190
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 191
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v8}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 192
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v7}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v7}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 193
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v9}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 194
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v10}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 196
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-direct {v0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->initCurrentFragments(Landroid/util/SparseIntArray;)V

    .line 200
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 202
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 103
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationComposite;->destroy()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method

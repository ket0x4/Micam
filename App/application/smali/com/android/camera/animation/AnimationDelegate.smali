.class public Lcom/android/camera/animation/AnimationDelegate;
.super Ljava/lang/Object;
.source "AnimationDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/animation/AnimationDelegate$AnimationResource;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    sput-object v0, Lcom/android/camera/animation/AnimationDelegate;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

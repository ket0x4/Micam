.class public Lcom/android/camera/ChangeManager;
.super Ljava/lang/Object;
.source "ChangeManager.java"


# instance fields
.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    return-void
.end method


# virtual methods
.method public check(I)Z
    .locals 0

    .line 17
    iget p0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clear(I)V
    .locals 1

    .line 21
    iget v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    return-void
.end method

.method public request(I)V
    .locals 1

    .line 13
    iget v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    return-void
.end method

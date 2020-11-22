.class public Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;
.super Ljava/lang/Object;
.source "MakeupSingleCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakeupItem"
.end annotation


# instance fields
.field private mImageResource:I

.field private mTextResource:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;->mImageResource:I

    .line 184
    iput p2, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;->mTextResource:I

    return-void
.end method


# virtual methods
.method public getImageResource()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;->mImageResource:I

    return p0
.end method

.method public getTextResource()I
    .locals 0

    .line 188
    iget p0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;->mTextResource:I

    return p0
.end method

.class public abstract Lcom/android/camera/ui/BeautyTitleView$Adapter;
.super Ljava/lang/Object;
.source "BeautyTitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BeautyTitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# instance fields
.field private mView:Lcom/android/camera/ui/BeautyTitleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getText(I)Ljava/lang/String;
.end method

.method public needShowRedDot(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final notifyDataChanged()V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/camera/ui/BeautyTitleView$Adapter;->mView:Lcom/android/camera/ui/BeautyTitleView;

    if-eqz p0, :cond_0

    .line 44
    invoke-static {p0}, Lcom/android/camera/ui/BeautyTitleView;->access$000(Lcom/android/camera/ui/BeautyTitleView;)V

    :cond_0
    return-void
.end method

.method protected final setView(Lcom/android/camera/ui/BeautyTitleView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView$Adapter;->mView:Lcom/android/camera/ui/BeautyTitleView;

    return-void
.end method

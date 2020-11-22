.class Lcom/android/camera/fragment/FragmentBeauty$1;
.super Ljava/lang/Object;
.source "FragmentBeauty.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBeauty;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBeauty;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBeauty;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$1;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$1;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->onBackEvent(I)Z

    return-void
.end method

.class Lcom/android/camera/ui/RotateImageView$1;
.super Ljava/lang/Object;
.source "RotateImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RotateImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/RotateImageView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/RotateImageView;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/camera/ui/RotateImageView$1;->this$0:Lcom/android/camera/ui/RotateImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/RotateImageView$1;->this$0:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/ui/RotateImageView;->access$000(Lcom/android/camera/ui/RotateImageView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/RotateImageView$1;->this$0:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/ui/RotateImageView;->access$000(Lcom/android/camera/ui/RotateImageView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 243
    iget-object p0, p0, Lcom/android/camera/ui/RotateImageView$1;->this$0:Lcom/android/camera/ui/RotateImageView;

    invoke-static {p0}, Lcom/android/camera/ui/RotateImageView;->access$000(Lcom/android/camera/ui/RotateImageView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

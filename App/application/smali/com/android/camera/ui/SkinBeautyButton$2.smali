.class Lcom/android/camera/ui/SkinBeautyButton$2;
.super Ljava/lang/Object;
.source "SkinBeautyButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SkinBeautyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SkinBeautyButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SkinBeautyButton;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton$2;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 204
    instance-of p2, p5, Ljava/lang/Boolean;

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    .line 209
    iget-object p0, p0, Lcom/android/camera/ui/SkinBeautyButton$2;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-static {p0}, Lcom/android/camera/ui/SkinBeautyButton;->access$000(Lcom/android/camera/ui/SkinBeautyButton;)V

    return p3

    .line 212
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton$2;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-static {p1}, Lcom/android/camera/ui/SkinBeautyButton;->access$100(Lcom/android/camera/ui/SkinBeautyButton;)V

    .line 213
    iget-object p0, p0, Lcom/android/camera/ui/SkinBeautyButton$2;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-static {p0}, Lcom/android/camera/ui/SkinBeautyButton;->access$000(Lcom/android/camera/ui/SkinBeautyButton;)V

    :cond_2
    return p3
.end method

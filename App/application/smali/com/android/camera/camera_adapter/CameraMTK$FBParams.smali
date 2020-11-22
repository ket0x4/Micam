.class public Lcom/android/camera/camera_adapter/CameraMTK$FBParams;
.super Ljava/lang/Object;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FBParams"
.end annotation


# instance fields
.field public enlargeEye:I

.field public skinColor:I

.field public slimFace:I

.field public smoothLevel:I

.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 622
    :cond_0
    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    .line 623
    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    .line 624
    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    .line 625
    iget p1, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    iput p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 631
    :cond_0
    instance-of v1, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 633
    :cond_1
    check-cast p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .line 635
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    iget v3, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    if-eq v1, v3, :cond_2

    return v2

    .line 636
    :cond_2
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    iget v3, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    if-eq v1, v3, :cond_3

    return v2

    .line 637
    :cond_3
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    iget v3, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    if-eq v1, v3, :cond_4

    return v2

    .line 638
    :cond_4
    iget p0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    iget p1, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 645
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    mul-int/lit8 v0, v0, 0x1f

    .line 646
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 647
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 648
    iget p0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    add-int/2addr v0, p0

    return v0
.end method

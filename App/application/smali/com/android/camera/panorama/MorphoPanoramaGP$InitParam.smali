.class public Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;
.super Ljava/lang/Object;
.source "MorphoPanoramaGP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/panorama/MorphoPanoramaGP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitParam"
.end annotation


# instance fields
.field public angle_of_view_degree:D

.field public direction:I

.field public draw_cur_image:I

.field public dst_img_height:I

.field public dst_img_width:I

.field public format:Ljava/lang/String;

.field public output_rotation:I

.field public preview_height:I

.field public preview_img_height:I

.field public preview_img_width:I

.field public preview_shrink_ratio:I

.field public preview_width:I

.field public still_height:I

.field public still_width:I

.field public use_threshold:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

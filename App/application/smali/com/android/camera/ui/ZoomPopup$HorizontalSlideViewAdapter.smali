.class Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;
.super Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;
.source "ZoomPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ZoomPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalSlideViewAdapter"
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryLayouts:[Landroid/text/StaticLayout;

.field mPaint:Landroid/graphics/Paint;

.field mTextPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lcom/android/camera/ui/ZoomPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ZoomPopup;[Ljava/lang/CharSequence;)V
    .locals 10

    .line 169
    iput-object p1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 172
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    .line 173
    iget-object p2, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object p2, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/ui/ZoomPopup;->access$000(Lcom/android/camera/ui/ZoomPopup;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    iget-object p2, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/ui/ZoomPopup;->access$100(Lcom/android/camera/ui/ZoomPopup;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 176
    iget-object p1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 178
    new-instance p1, Landroid/text/TextPaint;

    iget-object p2, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mTextPaint:Landroid/text/TextPaint;

    .line 179
    iget-object p1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length p1, p1

    new-array p1, p1, [Landroid/text/StaticLayout;

    iput-object p1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    const/4 p1, 0x0

    .line 180
    :goto_0
    iget-object p2, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    new-instance v9, Landroid/text/StaticLayout;

    aget-object v2, p2, p1

    iget-object v3, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mTextPaint:Landroid/text/TextPaint;

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    aput-object v9, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawText(ILandroid/graphics/Canvas;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 188
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 189
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 190
    iget-object p0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 191
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public draw(ILandroid/graphics/Canvas;Z)V
    .locals 6

    .line 196
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mTextPaint:Landroid/text/TextPaint;

    if-eqz p3, :cond_0

    .line 198
    invoke-static {}, Lcom/android/camera/ui/ZoomPopup;->access$200()[I

    move-result-object p3

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {}, Lcom/android/camera/ui/ZoomPopup;->access$300()[I

    move-result-object p3

    :goto_0
    iput-object p3, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 200
    div-int/lit8 p1, p1, 0xa

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->drawText(ILandroid/graphics/Canvas;)V

    goto :goto_2

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_2

    .line 203
    iget-object p3, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {p3}, Lcom/android/camera/ui/ZoomPopup;->access$400(Lcom/android/camera/ui/ZoomPopup;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {}, Lcom/android/camera/ui/ZoomPopup;->access$200()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p3

    goto :goto_1

    .line 204
    :cond_2
    iget-object p3, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {p3}, Lcom/android/camera/ui/ZoomPopup;->access$500(Lcom/android/camera/ui/ZoomPopup;)I

    move-result p3

    .line 202
    :goto_1
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 205
    iget-object p1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {p1}, Lcom/android/camera/ui/ZoomPopup;->access$600(Lcom/android/camera/ui/ZoomPopup;)F

    move-result p1

    neg-float v2, p1

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {p1}, Lcom/android/camera/ui/ZoomPopup;->access$600(Lcom/android/camera/ui/ZoomPopup;)F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method public getAlign(I)Landroid/graphics/Paint$Align;
    .locals 0

    .line 229
    sget-object p0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {p0}, Lcom/android/camera/ui/ZoomPopup;->access$900(Lcom/android/camera/ui/ZoomPopup;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public measureGap(I)F
    .locals 1

    .line 220
    rem-int/lit8 v0, p1, 0xa

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {p0}, Lcom/android/camera/ui/ZoomPopup;->access$800(Lcom/android/camera/ui/ZoomPopup;)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 221
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {p0}, Lcom/android/camera/ui/ZoomPopup;->access$700(Lcom/android/camera/ui/ZoomPopup;)I

    move-result p0

    goto :goto_0
.end method

.method public measureWidth(I)F
    .locals 1

    .line 211
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    .line 212
    iget-object p0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    div-int/lit8 p1, p1, 0xa

    aget-object p0, p0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p0

    return p0

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {p0}, Lcom/android/camera/ui/ZoomPopup;->access$000(Lcom/android/camera/ui/ZoomPopup;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

#ifndef DEFENCEAREA_H
#define DEFENCEAREA_H


#include "rectangle.h"
#include "sector.h"
#include "iostream"


/*! @file
 * DefenceArea is a Region that has functions related to the area around the goalpost.
 * It consists of two sectors and a rectangle, which are also Regions.
 * It can be constructed using the global variables @c OUR_TEAM for our defence area,
 * or @c !OUR_TEAM for the opponent defence area. @see Region.
 */

class DefenceArea : public Region
{
public:
    /*! Contructor for the defence area
     */
    DefenceArea(int side);

    /*! @see Region::contains() */
    bool contains(const Point&) override;

    /*! Modified contains() function that returns true if the input Point
     *  is within @c tolerance distance from the defence area. This is
     *  useful to see if @b any part of a robot is within the defence area
     *  since only the centre of the robot is checked.
     */
    bool contains(Point, const float tolerance);

    /*! @see Region::draw() */
    void draw() override;

    /*! Given a Point (by reference) that is inside the defence area, modifies
     *  it such that it is outside the defence area while being as close as
     *  possible to the original point. Useful for path-planning.
     */
    void expelPoint(Point&);

    /*! Tests whether the input line segment passes through the defence area.
     * Note: the field edge line running along the goalpost is not considered
     * for intersection.
     * @param const Point& A The start of the line segment.
     * @param const Point& B The end of the line segment.
     * @return std::vector<Point> A vector of points where the line segment
     * intercepts the defence area lining. It will be empty if no intercepts
     * exist, and will have at most 2 points.
     */
    std::vector<Point> intersectSegment(Point A, Point B);


    /*! Tests whether the input line (not segment) passes through the defence area.
     * Note: the field edge line running along the goalpost is not considered
     * for intersection.
     * @param const Point& A One point on the line.
     * @param const Point& B Another point on the line.
     * @return std::vector<Point> A vector of points where the line
     * intercepts the defence area lining. It will be empty if no intercepts
     * exist, and will have at most 2 points.
     */
    std::vector<Point> intersectLine(Point A, Point B);

private:
    int side_sign; // sign of x coordinates: 1 for positive -1 for negative
    Rectangle positive_area; // note: storing both areas simplifies some calculations
    Rectangle area;
};

#endif // DEFENCEAREA_H

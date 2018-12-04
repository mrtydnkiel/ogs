/**
 *
 * \copyright
 * Copyright (c) 2012-2018, OpenGeoSys Community (http://www.opengeosys.org)
 *            Distributed under a Modified BSD License.
 *              See accompanying file LICENSE.txt or
 *              http://www.opengeosys.org/project/license
 *
 * File:   DeactivatedSubdomain.h
 *
 * Created on November 29, 2018, 10:50 AM
 */
#pragma once

#include <algorithm>
#include <memory>
#include <string>
#include <vector>

namespace BaseLib
{
class ConfigTree;
class TimeInterval;
}

namespace MeshLib
{
class Mesh;
class Node;
}

namespace ProcessLib
{
struct DeactivetedSubdomainMesh
{
    DeactivetedSubdomainMesh(
        std::unique_ptr<MeshLib::Mesh> deactivated_subdomain_mesh_,
        std::vector<MeshLib::Node*>&& inactive_nodes_);

    std::unique_ptr<MeshLib::Mesh> const mesh;
    std::vector<MeshLib::Node*> const inactive_nodes;
};

struct DeactivatedSubdomain
{
    DeactivatedSubdomain(
        std::unique_ptr<BaseLib::TimeInterval> time_interval_,
        std::vector<int>&& materialIDs_,
        std::vector<std::unique_ptr<DeactivetedSubdomainMesh>>&&
            deactivated_sudomain_meshes_);

    std::unique_ptr<BaseLib::TimeInterval const> time_interval;

    /// The material IDs of the deactivated the subdomains
    std::vector<int> const materialIDs;

    std::vector<std::unique_ptr<DeactivetedSubdomainMesh>> const
        deactivated_sudomain_meshes;

    static const std::string name_of_paramater_of_zero;
};

std::vector<std::unique_ptr<DeactivatedSubdomain const>>
createDeactivatedSubdomains(BaseLib::ConfigTree const& config,
                            MeshLib::Mesh const& mesh);

}  // end of namespace
